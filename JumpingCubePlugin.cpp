#include <retroshare/rsplugin.h>
#include <util/rsversion.h>
#include <QTranslator>
#include <QIcon>


#include "JumpingCubePlugin.h"
//#include "LinksDialog.h"
#include "topjcdialog.h"

#include "p3ExampleRS.h"
//static void *inited = new JumpingCubePlugin();

//inited->rs_cache_service();

extern "C" {
	void *RETROSHARE_PLUGIN_provide()
	{
        static JumpingCubePlugin *p = new JumpingCubePlugin() ;

		return (void*)p ;
	}

	// This symbol contains the svn revision number grabbed from the executable. 
	// It will be tested by RS to load the plugin automatically, since it is safe to load plugins
	// with same revision numbers, assuming that the revision numbers are up-to-date.
	//
	uint32_t RETROSHARE_PLUGIN_revision = SVN_REVISION_NUMBER ;

	// This symbol contains the svn revision number grabbed from the executable. 
	// It will be tested by RS to load the plugin automatically, since it is safe to load plugins
	// with same revision numbers, assuming that the revision numbers are up-to-date.
	//
	uint32_t RETROSHARE_PLUGIN_api = RS_PLUGIN_API_VERSION ;
}

#define IMAGE_LINKS ":/images/dice.png"

void JumpingCubePlugin::getPluginVersion(int& major,int& minor,int& svn_rev) const
{
	major = 5 ;
	minor = 4 ;
	svn_rev = SVN_REVISION_NUMBER ;
}

JumpingCubePlugin::JumpingCubePlugin()
{
    //mRanking = NULL ;
    mMsgque = new msgQue();
    tpage = new TopJCDialog();
    tpage->mMsgque = mMsgque;
	mainpage = NULL ;
        mIcon = NULL ;
        mPlugInHandler = NULL;
        mPeers = NULL;
        mFiles = NULL;
        mServiceP3 = NULL;
}

void JumpingCubePlugin::setInterfaces(RsPlugInInterfaces &interfaces){

    mPeers = interfaces.mPeers;
    mFiles = interfaces.mFiles;
}



MainPage *JumpingCubePlugin::qt_page() const
{
	if(mainpage == NULL)
                mainpage = tpage;//new TopJCDialog();//mPeers, mFiles) ;
	return mainpage ;
}

RsCacheService *JumpingCubePlugin::rs_cache_service() const
{
    /*if(mRanking == NULL)
	{
                mRanking = new p3Ranking(mPlugInHandler) ; // , 3600 * 24 * 30 * 6); // 6 Months
		rsRanks = mRanking ;
	}

    return mRanking ;*/
    return NULL;
}


RsPQIService * JumpingCubePlugin::rs_pqi_service() const
{
    if(mServiceP3 == NULL){
        mServiceP3 = new p3ExampleRS(mPlugInHandler, mPeers , mMsgque) ;
        tpage->p3service = mServiceP3;
    }

    return mServiceP3 ;
}

void JumpingCubePlugin::setPlugInHandler(RsPluginHandler *pgHandler){
    mPlugInHandler = pgHandler;

}

QIcon *JumpingCubePlugin::qt_icon() const
{
	if(mIcon == NULL)
	{
        Q_INIT_RESOURCE(JumpingCube_images) ;

        mIcon = new QIcon(IMAGE_LINKS) ;
	}

	return mIcon ;
}

std::string JumpingCubePlugin::getShortPluginDescription() const
{
    return "infosoon";//QApplication::translate("JumpingCubePlugin", "This plugin provides a set of cached links, and a voting system to promote them.").toUtf8().constData();
}

std::string JumpingCubePlugin::getPluginName() const
{
    return "JumpingCube";//QApplication::translate("JumpingCubePlugin", "JumpingCube").toUtf8().constData();
}

QTranslator* JumpingCubePlugin::qt_translator(QApplication */*app*/, const QString& languageCode, const QString& externalDir) const
{
	if (languageCode == "en") {
		return NULL;
	}

	QTranslator* translator = new QTranslator();

    if (translator->load(externalDir + "/JumpingCube_" + languageCode + ".qm")) {
		return translator;
    } else if (translator->load(":/lang/JumpingCube_" + languageCode + ".qm")) {
		return translator;
	}

	delete(translator);
	return NULL;
}
