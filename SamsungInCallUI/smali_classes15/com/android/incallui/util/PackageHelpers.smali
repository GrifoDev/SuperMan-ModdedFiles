.class public Lcom/android/incallui/util/PackageHelpers;
.super Ljava/lang/Object;
.source "PackageHelpers.java"


# static fields
.field public static final CAMERA_PACKAGENAME:Ljava/lang/String; = "com.sec.android.app.camera"

.field public static final CYMERA_PACKAGENAME:Ljava/lang/String; = "com.cyworld.camera"

.field public static final DIOTEK_PENMEMO_CLASSNAME:Ljava/lang/String; = "com.diotek.mini_penmemo.Mini_PenMemo_Service"

.field public static final DIOTEK_PENMEMO_PACKAGENAME:Ljava/lang/String; = "com.diotek.mini_penmemo"

.field public static final EASY_LAUNCHER_PACKAGENAME:Ljava/lang/String; = "com.sec.android.app.easylauncher.Launcher"

.field public static final GALLERY_CLASSNAME:Ljava/lang/String; = "com.sec.android.gallery3d.app.GalleryOpaqueActivity"

.field public static final GALLERY_PACKAGENAME:Ljava/lang/String; = "com.sec.android.gallery3d"

.field public static final GROUPCAMCORDER_PACKAGENAME:Ljava/lang/String; = "com.sec.android.app.ma.recorder"

.field public static final INITIALSETTING_DCM_PACKAGENAME:Ljava/lang/String; = "com.nttdocomo.android.initialization"

.field public static final KDDI_MESSAGE_PACKAGENAME:Ljava/lang/String; = "com.kddi.android.cmail"

.field public static final KIDMODE_CONTENTS_DCM_PACKAGENAME:Ljava/lang/String; = "com.nttdocomo.android.kids"

.field public static final KIDMODE_DCM_PACKAGENAME:Ljava/lang/String; = "com.nttdocomo.android.kidsmode"

.field public static final LAUNCHER_ACTIVITYNAME:Ljava/lang/String; = "com.sec.android.app.launcher.activities.LauncherActivity"

.field public static final LAUNCHER_DCM_DHOME_PACKAGENAME:Ljava/lang/String; = "com.nttdocomo.android.dhome.HomeActivity"

.field private static final LOG_TAG:Ljava/lang/String; = "PackageHelpers"

.field public static final MAGNIFIER_PACKAGENAME:Ljava/lang/String; = "com.sec.android.app.magnifier"

.field public static final MASS_LAUNCHER_CLASSNAME:Ljava/lang/String; = "com.android.launcher2.LauncherApplication"

.field public static final MASS_LAUNCHER_PACKAGENAME:Ljava/lang/String; = "com.sec.android.app.launcher"

.field public static final MEDIAPLAYER_DCM_PACKAGENAME:Ljava/lang/String; = "com.nttdocomo.android.mediaplayer"

.field public static final MEMO_CLASSNAME:Ljava/lang/String; = "com.samsung.android.app.memo.Main"

.field public static final MEMO_PACKAGENAME:Ljava/lang/String; = "com.samsung.android.app.memo"

.field public static final SMARTCALL_BLOCK_CLASSNAME:Ljava/lang/String; = "com.android.server.telecom.smartcall.SmartCallBlockActivity"

.field public static final SMARTCALL_REPORT_CLASSNAME:Ljava/lang/String; = "com.android.server.telecom.smartcall.SmartCallHiyaReportActivity"

.field public static final SNOTE_CLASSNAME:Ljava/lang/String; = "com.samsung.android.snote.control.ui.quickmemo.service.QuickMemo_Service"

.field public static final SNOTE_PACKAGENAME:Ljava/lang/String; = "com.samsung.android.snote"

.field public static final SPAMCALL_REPORT_CLASSNAME:Ljava/lang/String; = "com.android.server.telecom.operator.chn.SpamCallReportDialogActivity"

.field public static final TABLET_LAUNCHER_PACKAGENAME:Ljava/lang/String; = "com.android.launcher2.Launcher"

.field public static final TELECOM_PACKAGENAME:Ljava/lang/String; = "com.android.server.telecom"

.field public static final VZW_MESSAGE_CLASSNAME:Ljava/lang/String; = "com.verizon.mms.ui.ComposeMessageActivity"

.field public static final VZW_MESSAGE_PACKAGENAME:Ljava/lang/String; = "com.verizon.messaging.vzmsgs"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addToContactClicked()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x0

    const/16 v11, 0x20

    .line 665
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 666
    .local v3, "context":Landroid/content/Context;
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v9

    invoke-static {v9, v13, v12}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    .line 667
    .local v1, "call":Lcom/android/incallui/Call;
    invoke-static {v3}, Lcom/android/incallui/util/InCallUtils;->getNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 669
    .local v8, "number":Ljava/lang/String;
    const-string v9, "roaming_auto_dial"

    invoke-static {v9}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 670
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isRoamingArea()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 671
    invoke-static {v1}, Lcom/android/incallui/util/SecCallExtraUtils;->getIsRadNumberConverted(Lcom/android/incallui/Call;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 672
    invoke-static {v1}, Lcom/android/incallui/util/SecCallExtraUtils;->getRadOriginalNumber(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v8

    .line 674
    :cond_0
    if-eqz v8, :cond_4

    .line 675
    new-instance v6, Landroid/content/Intent;

    const-string v9, "com.android.contacts.action.SHOW_OR_CREATE_CONTACT"

    const-string v10, "tel"

    invoke-static {v10, v8, v13}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v6, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 676
    .local v6, "intent":Landroid/content/Intent;
    const-string v9, "from_call"

    const/4 v10, 0x1

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 677
    const-string v9, "feature_usa"

    invoke-static {v9}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string v9, "feature_can"

    .line 678
    invoke-static {v9}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 679
    :cond_1
    const/4 v2, 0x0

    .line 680
    .local v2, "cnapName":Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getCnapName()Ljava/lang/String;

    move-result-object v2

    .line 681
    :cond_2
    if-eqz v2, :cond_3

    .line 683
    invoke-virtual {v2, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_5

    .line 684
    move-object v5, v2

    .line 685
    .local v5, "firstName":Ljava/lang/String;
    const-string v7, " "

    .line 690
    .local v7, "lastName":Ljava/lang/String;
    :goto_0
    const-string v9, "name"

    invoke-virtual {v6, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 691
    const-string v9, "data2"

    invoke-virtual {v6, v9, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 692
    const-string v9, "data3"

    invoke-virtual {v6, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 695
    .end local v2    # "cnapName":Ljava/lang/String;
    .end local v5    # "firstName":Ljava/lang/String;
    .end local v7    # "lastName":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 696
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    .line 698
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    if-eqz v0, :cond_4

    .line 699
    :try_start_0
    invoke-virtual {v0, v6}, Lcom/android/incallui/InCallActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 706
    .end local v0    # "activity":Lcom/android/incallui/InCallActivity;
    .end local v6    # "intent":Landroid/content/Intent;
    :cond_4
    :goto_1
    return-void

    .line 687
    .restart local v2    # "cnapName":Ljava/lang/String;
    .restart local v6    # "intent":Landroid/content/Intent;
    :cond_5
    invoke-virtual {v2, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    invoke-virtual {v2, v12, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 688
    .restart local v5    # "firstName":Ljava/lang/String;
    invoke-virtual {v2, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v2, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "lastName":Ljava/lang/String;
    goto :goto_0

    .line 701
    .end local v2    # "cnapName":Ljava/lang/String;
    .end local v5    # "firstName":Ljava/lang/String;
    .end local v7    # "lastName":Ljava/lang/String;
    .restart local v0    # "activity":Lcom/android/incallui/InCallActivity;
    :catch_0
    move-exception v4

    .line 702
    .local v4, "e":Landroid/content/ActivityNotFoundException;
    const-string v9, "PackageHelpers"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "startActivity() failed: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static connectSamsungApps(Ljava/lang/String;)V
    .locals 7
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 125
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 127
    .local v0, "context":Landroid/content/Context;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "samsungapps://ProductDetail/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 129
    .local v3, "uri":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 130
    .local v2, "intent":Landroid/content/Intent;
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 131
    const-string v4, "NOACCOUNT"

    const-string v5, "Y"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    const v4, 0x14000020

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 136
    :try_start_0
    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :goto_0
    return-void

    .line 137
    :catch_0
    move-exception v1

    .line 138
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v4, "PackageHelpers"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startActivity() failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static createContactClicked()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    const/16 v11, 0x20

    .line 709
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 710
    .local v3, "context":Landroid/content/Context;
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v9, v10, v12}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    .line 711
    .local v1, "call":Lcom/android/incallui/Call;
    const/4 v8, 0x0

    .line 712
    .local v8, "number":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 713
    invoke-static {v3}, Lcom/android/incallui/util/InCallUtils;->getNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 715
    :cond_0
    new-instance v6, Landroid/content/Intent;

    const-string v9, "android.intent.action.INSERT"

    sget-object v10, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v6, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 716
    .local v6, "intent":Landroid/content/Intent;
    if-eqz v8, :cond_4

    .line 717
    const-string v9, "feature_usa"

    invoke-static {v9}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string v9, "feature_can"

    .line 718
    invoke-static {v9}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 719
    :cond_1
    const/4 v2, 0x0

    .line 720
    .local v2, "cnapName":Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getCnapName()Ljava/lang/String;

    move-result-object v2

    .line 721
    :cond_2
    if-eqz v2, :cond_3

    .line 723
    invoke-virtual {v2, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_6

    .line 724
    move-object v5, v2

    .line 725
    .local v5, "firstName":Ljava/lang/String;
    const-string v7, " "

    .line 730
    .local v7, "lastName":Ljava/lang/String;
    :goto_0
    const-string v9, "name"

    invoke-virtual {v6, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 731
    const-string v9, "data2"

    invoke-virtual {v6, v9, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 732
    const-string v9, "data3"

    invoke-virtual {v6, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 733
    const-string v9, "from_call"

    invoke-virtual {v6, v9, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 736
    .end local v2    # "cnapName":Ljava/lang/String;
    .end local v5    # "firstName":Ljava/lang/String;
    .end local v7    # "lastName":Ljava/lang/String;
    :cond_3
    invoke-static {v8}, Lcom/android/incallui/util/NameNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 737
    const-string v9, "sip"

    invoke-virtual {v6, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 743
    :cond_4
    :goto_1
    const-string v9, "finishActivityOnSaveCompleted"

    invoke-virtual {v6, v9, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 744
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    .line 746
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    if-eqz v0, :cond_5

    .line 747
    :try_start_0
    invoke-virtual {v0, v6}, Lcom/android/incallui/InCallActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 752
    :cond_5
    :goto_2
    return-void

    .line 727
    .end local v0    # "activity":Lcom/android/incallui/InCallActivity;
    .restart local v2    # "cnapName":Ljava/lang/String;
    :cond_6
    invoke-virtual {v2, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    invoke-virtual {v2, v12, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 728
    .restart local v5    # "firstName":Ljava/lang/String;
    invoke-virtual {v2, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v2, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "lastName":Ljava/lang/String;
    goto :goto_0

    .line 739
    .end local v2    # "cnapName":Ljava/lang/String;
    .end local v5    # "firstName":Ljava/lang/String;
    .end local v7    # "lastName":Ljava/lang/String;
    :cond_7
    const-string v9, "phone"

    invoke-virtual {v6, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 749
    .restart local v0    # "activity":Lcom/android/incallui/InCallActivity;
    :catch_0
    move-exception v4

    .line 750
    .local v4, "e":Landroid/content/ActivityNotFoundException;
    const-string v9, "PackageHelpers"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "startActivity() failed: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static createContactClicked(Ljava/lang/String;)V
    .locals 6
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 755
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.INSERT"

    sget-object v4, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 756
    .local v2, "intent":Landroid/content/Intent;
    if-eqz p0, :cond_0

    .line 757
    invoke-static {p0}, Lcom/android/incallui/util/NameNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 758
    const-string v3, "sip"

    invoke-virtual {v2, v3, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 764
    :cond_0
    :goto_0
    const-string v3, "finishActivityOnSaveCompleted"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 765
    const-string v3, "from_call"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 766
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 768
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_1

    .line 769
    :try_start_0
    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 774
    :cond_1
    :goto_1
    return-void

    .line 760
    .end local v0    # "context":Landroid/content/Context;
    :cond_2
    const-string v3, "phone"

    invoke-virtual {v2, v3, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 771
    .restart local v0    # "context":Landroid/content/Context;
    :catch_0
    move-exception v1

    .line 772
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v3, "PackageHelpers"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startActivity() failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static getAppInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;
    .locals 4
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 604
    const/4 v0, 0x0

    .line 606
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 610
    :goto_0
    return-object v0

    .line 607
    :catch_0
    move-exception v1

    .line 608
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "PackageHelpers"

    const-string v3, "can\'t find package"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getBaseActivity()Ljava/lang/String;
    .locals 4

    .prologue
    .line 206
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Lcom/android/incallui/InCallApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 207
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 208
    .local v1, "taskinfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 209
    const/4 v2, 0x0

    .line 211
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private static getPersonId()J
    .locals 8

    .prologue
    .line 614
    const-wide/16 v4, 0x0

    .line 615
    .local v4, "personId":J
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v3, v6, v7}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    .line 616
    .local v1, "call":Lcom/android/incallui/Call;
    if-eqz v1, :cond_0

    .line 617
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    .line 618
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    if-eqz v0, :cond_0

    .line 619
    invoke-static {v0}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v2

    .line 620
    .local v2, "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    if-eqz v2, :cond_0

    .line 621
    iget-wide v4, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->personId:J

    .line 624
    .end local v0    # "activity":Lcom/android/incallui/InCallActivity;
    .end local v2    # "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    :cond_0
    return-wide v4
.end method

.method public static getTopActivity()Ljava/lang/String;
    .locals 4

    .prologue
    .line 197
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Lcom/android/incallui/InCallApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 198
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 199
    .local v1, "taskinfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 200
    const/4 v2, 0x0

    .line 202
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private static isApplicationEnabled(Ljava/lang/String;)Z
    .locals 4
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 594
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 595
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 596
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 597
    .local v1, "enable":Z
    invoke-static {v2, p0}, Lcom/android/incallui/util/PackageHelpers;->getAppInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 598
    invoke-static {v2, p0}, Lcom/android/incallui/util/PackageHelpers;->getAppInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-boolean v1, v3, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 600
    :cond_0
    return v1
.end method

.method public static isContactsApplicationEnabled()Z
    .locals 1

    .prologue
    .line 871
    invoke-static {}, Lcom/android/incallui/InCallUIFeature;->getContactsPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/PackageHelpers;->isApplicationEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isPackageInstalled(Ljava/lang/String;)Z
    .locals 8
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 93
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 94
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 95
    .local v2, "pm":Landroid/content/pm/PackageManager;
    if-nez v2, :cond_0

    .line 104
    :goto_0
    return v3

    .line 99
    :cond_0
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v2, p0, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    .line 104
    goto :goto_0

    .line 100
    :catch_0
    move-exception v1

    .line 101
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "PackageHelpers"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isPackageInstalled: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public static isSamsungAppsPackageInstalled()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 109
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 110
    .local v1, "context":Landroid/content/Context;
    const-string v0, "com.sec.android.app.samsungapps"

    .line 111
    .local v0, "ODC_PACKAGE_NAME":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 112
    .local v3, "pm":Landroid/content/pm/PackageManager;
    if-nez v3, :cond_0

    .line 120
    :goto_0
    return v4

    .line 116
    :cond_0
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v3, v0, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    const/4 v4, 0x1

    goto :goto_0

    .line 117
    :catch_0
    move-exception v2

    .line 118
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method public static isTopActivityRunning(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 170
    const-string v3, "activity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 171
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 172
    .local v1, "taskinfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 175
    :goto_0
    return v2

    :cond_0
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method public static isTopActivityRunning(Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 166
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/incallui/util/PackageHelpers;->isTopActivityRunning(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isTopActivityRunningEx(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 179
    const-string v3, "activity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 180
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 181
    .local v1, "taskinfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 184
    :goto_0
    return v2

    :cond_0
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    goto :goto_0
.end method

.method public static isTopActivityRunningPackage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 188
    const-string v3, "activity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 189
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 190
    .local v1, "taskinfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 193
    :goto_0
    return v2

    :cond_0
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    goto :goto_0
.end method

.method public static launchBlockSmartCall(Ljava/lang/String;)V
    .locals 7
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 527
    const-string v4, "PackageHelpers"

    const-string v5, "launchBlockSmartCall"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 528
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    .line 529
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallPresenter;->getCallPopupService()Lcom/android/incallui/service/SecCallPopupService;

    move-result-object v3

    .line 530
    .local v3, "mCallPopupService":Lcom/android/incallui/service/SecCallPopupService;
    if-nez v0, :cond_0

    if-eqz v3, :cond_1

    :cond_0
    const-string v4, "support_smart_call"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 546
    :cond_1
    :goto_0
    return-void

    .line 533
    :cond_2
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 534
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "com.android.server.telecom"

    const-string v5, "com.android.server.telecom.smartcall.SmartCallBlockActivity"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 535
    const/high16 v4, 0x30000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 536
    const-string v4, "number"

    invoke-virtual {v2, v4, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 538
    if-eqz v0, :cond_3

    .line 539
    :try_start_0
    invoke-virtual {v0, v2}, Lcom/android/incallui/InCallActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 543
    :catch_0
    move-exception v1

    .line 544
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v4, "PackageHelpers"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startActivity() failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 541
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :cond_3
    :try_start_1
    invoke-virtual {v3, v2}, Lcom/android/incallui/service/SecCallPopupService;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static launchContacts()V
    .locals 7

    .prologue
    .line 343
    const-string v4, "PackageHelpers"

    const-string v5, "launchContacts"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 345
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    .line 346
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    if-nez v0, :cond_0

    .line 366
    :goto_0
    return-void

    .line 348
    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Contact_ReplacePackageAs"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 349
    .local v3, "launchPackage":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 350
    invoke-static {}, Lcom/android/incallui/InCallUIFeature;->getContactsPackageName()Ljava/lang/String;

    move-result-object v3

    .line 353
    :cond_1
    invoke-static {v3}, Lcom/android/incallui/util/PackageHelpers;->isApplicationEnabled(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 354
    invoke-static {v0, v3}, Lcom/android/incallui/util/PackageHelpers;->showDisabledAppDialog(Lcom/android/incallui/InCallActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 358
    :cond_2
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    const-string v5, "content://contacts/people"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 359
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 361
    :try_start_0
    invoke-virtual {v0, v2}, Lcom/android/incallui/InCallActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 362
    :catch_0
    move-exception v1

    .line 363
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v4, "PackageHelpers"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startActivity() failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    const v4, 0x7f0900f3

    invoke-static {v4}, Lcom/android/incallui/util/InCallUtils;->displayToastLong(I)V

    goto :goto_0
.end method

.method private static launchDuringCallMemo()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 455
    invoke-static {}, Lcom/android/incallui/util/NameNumberUtils;->getPrimaryPhoneNumber()Ljava/lang/String;

    move-result-object v4

    .line 457
    .local v4, "phoneNumber":Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    .line 458
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    if-nez v0, :cond_0

    .line 495
    :goto_0
    return-void

    .line 460
    :cond_0
    const-string v5, "com.samsung.android.app.memo"

    invoke-static {v5}, Lcom/android/incallui/util/PackageHelpers;->isApplicationEnabled(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 461
    const-string v5, "com.samsung.android.app.memo"

    invoke-static {v0, v5}, Lcom/android/incallui/util/PackageHelpers;->showDisabledAppDialog(Lcom/android/incallui/InCallActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 467
    :cond_1
    if-eqz v4, :cond_2

    .line 468
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 471
    :cond_2
    if-eqz v4, :cond_3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 472
    :cond_3
    invoke-static {}, Lcom/android/incallui/util/NameNumberUtils;->getPrimaryOriginalPhoneNumber()Ljava/lang/String;

    move-result-object v4

    .line 473
    const-string v5, "PackageHelpers"

    const-string v6, "launchDuringCallMemo getPrimaryOriginalPhoneNumber"

    invoke-static {v5, v6, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 474
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 477
    :cond_4
    invoke-static {}, Lcom/android/incallui/util/NameNumberUtils;->getPrimaryCallerName()Ljava/lang/String;

    move-result-object v1

    .line 478
    .local v1, "callerName":Ljava/lang/String;
    if-nez v1, :cond_5

    .line 479
    move-object v1, v4

    .line 482
    :cond_5
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 483
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v5, 0x30000000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 484
    const-string v5, "android.intent.action.SEND"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 485
    const-string v5, "_fromCallApp"

    invoke-virtual {v3, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 486
    const-string v5, "_phoneNum"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 487
    const-string v5, "android.intent.extra.TITLE"

    invoke-virtual {v3, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 488
    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.samsung.android.app.memo"

    const-string v7, "com.samsung.android.app.memo.Main"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 490
    :try_start_0
    invoke-virtual {v0, v3}, Lcom/android/incallui/InCallActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 491
    :catch_0
    move-exception v2

    .line 492
    .local v2, "e":Landroid/content/ActivityNotFoundException;
    const v5, 0x7f0900f3

    invoke-static {v5}, Lcom/android/incallui/util/InCallUtils;->displayToastLong(I)V

    .line 493
    const-string v5, "PackageHelpers"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startActivity() failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static launchDuringCallSnote()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 405
    invoke-static {}, Lcom/android/incallui/util/NameNumberUtils;->getPrimaryPhoneNumber()Ljava/lang/String;

    move-result-object v5

    .line 407
    .local v5, "phoneNumber":Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    .line 408
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    if-nez v0, :cond_1

    .line 452
    :cond_0
    :goto_0
    return-void

    .line 410
    :cond_1
    const-string v7, "com.samsung.android.snote"

    invoke-static {v7}, Lcom/android/incallui/util/PackageHelpers;->isApplicationEnabled(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 411
    const-string v7, "com.samsung.android.snote"

    invoke-static {v0, v7}, Lcom/android/incallui/util/PackageHelpers;->showDisabledAppDialog(Lcom/android/incallui/InCallActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 417
    :cond_2
    if-eqz v5, :cond_3

    .line 418
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 421
    :cond_3
    if-eqz v5, :cond_4

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 422
    :cond_4
    invoke-static {}, Lcom/android/incallui/util/NameNumberUtils;->getPrimaryOriginalPhoneNumber()Ljava/lang/String;

    move-result-object v5

    .line 423
    const-string v7, "PackageHelpers"

    const-string v8, "launchDuringCallSnote getPrimaryOriginalPhoneNumber"

    invoke-static {v7, v8, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 424
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 428
    :cond_5
    :try_start_0
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 430
    .local v1, "context":Landroid/content/Context;
    new-instance v4, Landroid/content/Intent;

    const-string v7, "com.samsung.action.MINI_MODE_SERVICE"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 431
    .local v4, "mIntentSnote":Landroid/content/Intent;
    const-string v7, "com.samsung.android.snote"

    const-string v8, "com.samsung.android.snote.control.ui.quickmemo.service.QuickMemo_Service"

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 432
    const-string v7, "phonenumbers"

    invoke-virtual {v4, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 434
    new-instance v3, Landroid/content/Intent;

    const-string v7, "com.samsung.action.MINI_MODE_SERVICE"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 435
    .local v3, "mIntentDiotek":Landroid/content/Intent;
    const-string v7, "com.diotek.mini_penmemo"

    const-string v8, "com.diotek.mini_penmemo.Mini_PenMemo_Service"

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 436
    const-string v7, "phonenumbers"

    invoke-virtual {v3, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 438
    invoke-virtual {v1, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v7

    if-nez v7, :cond_0

    .line 439
    const-string v7, "PackageHelpers"

    const-string v8, "SNote action memo StartService failed."

    invoke-static {v7, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    invoke-virtual {v1, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v7

    if-nez v7, :cond_0

    .line 441
    const-string v7, "PackageHelpers"

    const-string v8, "Diotek action memo StartService failed."

    invoke-static {v7, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.QUICKMEMO_LAUNCH"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 443
    .local v6, "qi":Landroid/content/Intent;
    const-string v7, "phonenumbers"

    invoke-virtual {v6, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 444
    invoke-virtual {v1, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 447
    .end local v1    # "context":Landroid/content/Context;
    .end local v3    # "mIntentDiotek":Landroid/content/Intent;
    .end local v4    # "mIntentSnote":Landroid/content/Intent;
    .end local v6    # "qi":Landroid/content/Intent;
    :catch_0
    move-exception v2

    .line 448
    .local v2, "e":Ljava/lang/Exception;
    const v7, 0x7f0900f3

    invoke-static {v7}, Lcom/android/incallui/util/InCallUtils;->displayToastLong(I)V

    .line 449
    const-string v7, "PackageHelpers"

    const-string v8, "QuickMemo StartService catch exception"

    invoke-static {v7, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    const-string v7, "PackageHelpers"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "launchDuringCallSnote: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v10}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0
.end method

.method public static launchEmail(Ljava/lang/String;)V
    .locals 8
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    const v7, 0x7f0900f3

    const/high16 v6, 0x10000000

    .line 215
    const-string v3, "PackageHelpers"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "launchEmail: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    .line 218
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    if-nez v0, :cond_0

    .line 242
    :goto_0
    return-void

    .line 219
    :cond_0
    const-string v3, "tablet_device"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 220
    invoke-static {}, Lcom/android/incallui/util/InCallUtilsWrapper;->keyguardWaitingForActivityDrawn()V

    .line 222
    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 223
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mailto:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 224
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 226
    :try_start_0
    invoke-virtual {v0, v2}, Lcom/android/incallui/InCallActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 227
    :catch_0
    move-exception v1

    .line 228
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v3, "PackageHelpers"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startActivity() failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-static {v7}, Lcom/android/incallui/util/InCallUtils;->displayToastLong(I)V

    goto :goto_0

    .line 232
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_2
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 233
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v3, "android.intent.category.APP_EMAIL"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 236
    :try_start_1
    invoke-virtual {v0, v2}, Lcom/android/incallui/InCallActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 237
    :catch_1
    move-exception v1

    .line 238
    .restart local v1    # "e":Landroid/content/ActivityNotFoundException;
    const-string v3, "PackageHelpers"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startActivity() failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    invoke-static {v7}, Lcom/android/incallui/util/InCallUtils;->displayToastLong(I)V

    goto/16 :goto_0
.end method

.method public static launchGallery()V
    .locals 6

    .prologue
    .line 498
    const-string v3, "PackageHelpers"

    const-string v4, "launchGallery"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 499
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    .line 500
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    if-nez v0, :cond_0

    .line 516
    :goto_0
    return-void

    .line 502
    :cond_0
    const-string v3, "com.sec.android.gallery3d"

    invoke-static {v3}, Lcom/android/incallui/util/PackageHelpers;->isApplicationEnabled(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 503
    const-string v3, "com.sec.android.gallery3d"

    invoke-static {v0, v3}, Lcom/android/incallui/util/PackageHelpers;->showDisabledAppDialog(Lcom/android/incallui/InCallActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 507
    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 508
    .local v2, "intent":Landroid/content/Intent;
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.sec.android.gallery3d"

    const-string v5, "com.sec.android.gallery3d.app.GalleryOpaqueActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 509
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 511
    :try_start_0
    invoke-virtual {v0, v2}, Lcom/android/incallui/InCallActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 512
    :catch_0
    move-exception v1

    .line 513
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v3, "PackageHelpers"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startActivity() failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    const v3, 0x7f0900f3

    invoke-static {v3}, Lcom/android/incallui/util/InCallUtils;->displayToastLong(I)V

    goto :goto_0
.end method

.method public static launchInternet()V
    .locals 6

    .prologue
    .line 322
    const-string v3, "PackageHelpers"

    const-string v4, "launchInternet"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 324
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    .line 325
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    if-nez v0, :cond_0

    .line 340
    :goto_0
    return-void

    .line 326
    :cond_0
    const-string v3, "tablet_device"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 327
    invoke-static {}, Lcom/android/incallui/util/InCallUtilsWrapper;->keyguardWaitingForActivityDrawn()V

    .line 329
    :cond_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 330
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 331
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 332
    const-string v3, "android.intent.category.APP_BROWSER"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 335
    :try_start_0
    invoke-virtual {v0, v2}, Lcom/android/incallui/InCallActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 336
    :catch_0
    move-exception v1

    .line 337
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v3, "PackageHelpers"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startActivity() failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    const v3, 0x7f0900f3

    invoke-static {v3}, Lcom/android/incallui/util/InCallUtils;->displayToastLong(I)V

    goto :goto_0
.end method

.method public static launchMemo()V
    .locals 4

    .prologue
    .line 387
    const-string v1, "PackageHelpers"

    const-string v2, "launchMemo"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 389
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    .line 390
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    if-nez v0, :cond_0

    .line 402
    :goto_0
    return-void

    .line 391
    :cond_0
    const-string v1, "com.samsung.android.snote"

    invoke-static {v1}, Lcom/android/incallui/util/PackageHelpers;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 392
    invoke-static {}, Lcom/android/incallui/util/PackageHelpers;->launchDuringCallSnote()V

    goto :goto_0

    .line 393
    :cond_1
    const-string v1, "com.samsung.android.app.memo"

    invoke-static {v1}, Lcom/android/incallui/util/PackageHelpers;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 394
    invoke-static {}, Lcom/android/incallui/util/PackageHelpers;->launchDuringCallMemo()V

    goto :goto_0

    .line 396
    :cond_2
    invoke-static {}, Lcom/android/incallui/util/PackageHelpers;->isSamsungAppsPackageInstalled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 397
    const v1, 0x7f090264

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/PackageHelpers;->showDownloadAppDialog(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 399
    :cond_3
    const v1, 0x7f0900f3

    invoke-static {v1}, Lcom/android/incallui/util/InCallUtils;->displayToastLong(I)V

    goto :goto_0
.end method

.method public static launchMessage()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const v12, 0x7f0900f3

    const/high16 v11, 0x10000000

    .line 245
    const/4 v7, 0x0

    .line 246
    .local v7, "phoneNumber":Ljava/lang/String;
    const/4 v6, 0x0

    .line 247
    .local v6, "msisdn":Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/InCallUIFeature;->getMessagePackageName()Ljava/lang/String;

    move-result-object v5

    .line 248
    .local v5, "messagePackageName":Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 249
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Landroid/provider/Telephony$Sms;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 251
    .local v2, "defaultSmsApplication":Ljava/lang/String;
    const-string v8, "feature_kdi"

    invoke-static {v8}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 252
    const-string v5, "com.kddi.android.cmail"

    .line 256
    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    .line 257
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    if-nez v0, :cond_1

    .line 319
    :goto_0
    return-void

    .line 258
    :cond_1
    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->isIMSConferenceCall()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 259
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v8, v13, v9}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v8

    invoke-static {v8}, Lcom/android/incallui/util/SecCallExtraUtils;->getGetAliveParticipantNumber(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v7

    .line 267
    :goto_1
    const-string v8, "jansky_info_for_tmo"

    invoke-static {v8}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 268
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->getLineMSISDN()Ljava/lang/String;

    move-result-object v6

    .line 271
    :cond_2
    const-string v8, "PackageHelpers"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "launchMessage, phoneNumber : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", defaultSmsApplication : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    if-nez v7, :cond_9

    .line 274
    new-instance v4, Landroid/content/Intent;

    const-string v8, "android.intent.action.SENDTO"

    const-string v9, "smsto:"

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v4, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 275
    .local v4, "intent":Landroid/content/Intent;
    const-string v8, "feature_vzw"

    invoke-static {v8}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    if-eqz v2, :cond_6

    const-string v8, "com.verizon.messaging.vzmsgs"

    .line 276
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 277
    const-string v8, "com.verizon.messaging.vzmsgs"

    invoke-static {v8}, Lcom/android/incallui/util/PackageHelpers;->isApplicationEnabled(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 278
    const-string v8, "com.verizon.messaging.vzmsgs"

    invoke-static {v0, v8}, Lcom/android/incallui/util/PackageHelpers;->showDisabledAppDialog(Lcom/android/incallui/InCallActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 260
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_3
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/CallList;->isConferenceCall()Z

    move-result v8

    if-eqz v8, :cond_5

    if-eqz v2, :cond_4

    const-string v8, "com.kddi.android.cmail"

    .line 261
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 262
    :cond_4
    invoke-static {}, Lcom/android/incallui/util/NameNumberUtils;->getConferenceChildCallNumbers()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 264
    :cond_5
    invoke-static {}, Lcom/android/incallui/util/NameNumberUtils;->getPhoneNumber()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 283
    .restart local v4    # "intent":Landroid/content/Intent;
    :cond_6
    invoke-static {v5}, Lcom/android/incallui/util/PackageHelpers;->isApplicationEnabled(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 284
    invoke-static {v0, v5}, Lcom/android/incallui/util/PackageHelpers;->showDisabledAppDialog(Lcom/android/incallui/InCallActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 288
    :cond_7
    invoke-virtual {v4, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 290
    const-string v8, "jansky_info_for_tmo"

    invoke-static {v8}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 291
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 292
    const-string v8, "PackageHelpers"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "launchMessage: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    const-string v8, "jansky_msisdn"

    invoke-virtual {v4, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 297
    :cond_8
    :try_start_0
    invoke-virtual {v0, v4}, Lcom/android/incallui/InCallActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 298
    :catch_0
    move-exception v3

    .line 299
    .local v3, "e":Landroid/content/ActivityNotFoundException;
    const-string v8, "PackageHelpers"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "startActivity() failed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    invoke-static {v12}, Lcom/android/incallui/util/InCallUtils;->displayToastLong(I)V

    goto/16 :goto_0

    .line 303
    .end local v3    # "e":Landroid/content/ActivityNotFoundException;
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_9
    new-instance v4, Landroid/content/Intent;

    const-string v8, "android.intent.action.SENDTO"

    const-string v9, "sms"

    invoke-static {v9, v7, v13}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v4, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 304
    .restart local v4    # "intent":Landroid/content/Intent;
    invoke-virtual {v4, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 306
    const-string v8, "jansky_info_for_tmo"

    invoke-static {v8}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 307
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_a

    .line 308
    const-string v8, "PackageHelpers"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "launchMessage: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    const-string v8, "jansky_msisdn"

    invoke-virtual {v4, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 313
    :cond_a
    :try_start_1
    invoke-virtual {v0, v4}, Lcom/android/incallui/InCallActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 314
    :catch_1
    move-exception v3

    .line 315
    .restart local v3    # "e":Landroid/content/ActivityNotFoundException;
    const-string v8, "PackageHelpers"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "startActivity() failed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    invoke-static {v12}, Lcom/android/incallui/util/InCallUtils;->displayToastLong(I)V

    goto/16 :goto_0
.end method

.method public static launchPlanner()V
    .locals 6

    .prologue
    .line 369
    const-string v3, "PackageHelpers"

    const-string v4, "launchPlanner"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 371
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    .line 372
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    if-nez v0, :cond_0

    .line 384
    :goto_0
    return-void

    .line 374
    :cond_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 375
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 376
    const/high16 v3, 0x30000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 377
    const-string v3, "android.intent.category.APP_CALENDAR"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 379
    :try_start_0
    invoke-virtual {v0, v2}, Lcom/android/incallui/InCallActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 380
    :catch_0
    move-exception v1

    .line 381
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v3, "PackageHelpers"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startActivity() failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    const v3, 0x7f0900f3

    invoke-static {v3}, Lcom/android/incallui/util/InCallUtils;->displayToastLong(I)V

    goto :goto_0
.end method

.method public static launchReportSmartCall(Ljava/lang/String;Lcom/android/incallui/smartcall/SmartCallInfo;)V
    .locals 7
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "smartCallInfo"    # Lcom/android/incallui/smartcall/SmartCallInfo;

    .prologue
    .line 549
    const-string v4, "PackageHelpers"

    const-string v5, "launchReportSmartCall"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 550
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    .line 551
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallPresenter;->getCallPopupService()Lcom/android/incallui/service/SecCallPopupService;

    move-result-object v3

    .line 552
    .local v3, "mCallPopupService":Lcom/android/incallui/service/SecCallPopupService;
    if-nez v0, :cond_0

    if-eqz v3, :cond_1

    :cond_0
    const-string v4, "support_smart_call"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 574
    :cond_1
    :goto_0
    return-void

    .line 555
    :cond_2
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 556
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "com.android.server.telecom"

    const-string v5, "com.android.server.telecom.smartcall.SmartCallHiyaReportActivity"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 557
    const/high16 v4, 0x30000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 558
    const-string v4, "number"

    invoke-virtual {v2, v4, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 559
    if-eqz p1, :cond_4

    .line 560
    iget-object v4, p1, Lcom/android/incallui/smartcall/SmartCallInfo;->reputationCategoryCode:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 561
    const-string v4, "categoryCode"

    iget-object v5, p1, Lcom/android/incallui/smartcall/SmartCallInfo;->reputationCategoryCode:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 563
    :cond_3
    const-string v4, "cpUrl"

    iget-object v5, p1, Lcom/android/incallui/smartcall/SmartCallInfo;->contentProviderUrl:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 566
    :cond_4
    if-eqz v0, :cond_5

    .line 567
    :try_start_0
    invoke-virtual {v0, v2}, Lcom/android/incallui/InCallActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 571
    :catch_0
    move-exception v1

    .line 572
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v4, "PackageHelpers"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startActivity() failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 569
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :cond_5
    :try_start_1
    invoke-virtual {v3, v2}, Lcom/android/incallui/service/SecCallPopupService;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static launchReportSpamCall(Ljava/lang/String;)V
    .locals 6
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 577
    const-string v3, "PackageHelpers"

    const-string v4, "launchReportSpamCall"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 578
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    .line 579
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    if-eqz v0, :cond_0

    const-string v3, "support_spam_call_report"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 591
    :cond_0
    :goto_0
    return-void

    .line 582
    :cond_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 583
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "com.android.server.telecom"

    const-string v4, "com.android.server.telecom.operator.chn.SpamCallReportDialogActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 584
    const/high16 v3, 0x30000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 585
    const-string v3, "Number"

    invoke-virtual {v2, v3, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 587
    :try_start_0
    invoke-virtual {v0, v2}, Lcom/android/incallui/InCallActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 588
    :catch_0
    move-exception v1

    .line 589
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v3, "PackageHelpers"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startActivity() failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static showDisabledAppDialog(Lcom/android/incallui/InCallActivity;Ljava/lang/String;)V
    .locals 7
    .param p0, "activity"    # Lcom/android/incallui/InCallActivity;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 777
    if-nez p0, :cond_0

    .line 807
    :goto_0
    return-void

    .line 779
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 780
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const-string v0, ""

    .line 781
    .local v0, "appName":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-static {v2, p1}, Lcom/android/incallui/util/PackageHelpers;->getAppInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 782
    invoke-static {v2, p1}, Lcom/android/incallui/util/PackageHelpers;->getAppInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 785
    :cond_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 786
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const v3, 0x7f0900fe

    new-array v4, v6, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/android/incallui/InCallActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 787
    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0900ff

    new-instance v5, Lcom/android/incallui/util/PackageHelpers$4;

    invoke-direct {v5, p1, p0}, Lcom/android/incallui/util/PackageHelpers$4;-><init>(Ljava/lang/String;Lcom/android/incallui/InCallActivity;)V

    .line 788
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0900c8

    new-instance v5, Lcom/android/incallui/util/PackageHelpers$3;

    invoke-direct {v5}, Lcom/android/incallui/util/PackageHelpers$3;-><init>()V

    .line 800
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 806
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method public static showDownloadAppDialog(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 143
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 144
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f090103

    new-instance v3, Lcom/android/incallui/util/PackageHelpers$1;

    invoke-direct {v3}, Lcom/android/incallui/util/PackageHelpers$1;-><init>()V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 150
    const v2, 0x7f0900c8

    new-instance v3, Lcom/android/incallui/util/PackageHelpers$2;

    invoke-direct {v3}, Lcom/android/incallui/util/PackageHelpers$2;-><init>()V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 156
    const v2, 0x7f090104

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 157
    const v2, 0x7f090105

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 158
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 157
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 159
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 160
    .local v1, "dialog":Landroid/app/AlertDialog;
    const-string v2, "tablet_device"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 161
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7de

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 162
    :cond_0
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 163
    return-void
.end method

.method public static spamBlockClicked(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 860
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 861
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    .line 862
    const-string v1, "support_spam_call_report"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 863
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/util/NameNumberUtils;->configBlacklistNumber(Landroid/content/Context;Ljava/lang/String;)V

    .line 868
    :cond_0
    :goto_0
    return-void

    .line 864
    :cond_1
    const-string v1, "support_smart_call"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 865
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/util/PackageHelpers;->launchBlockSmartCall(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static spamBlockClicked(Landroid/content/Context;Lcom/android/incallui/Call;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 850
    const-string v0, "support_spam_call_report"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 851
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/util/NameNumberUtils;->configBlacklistNumber(Landroid/content/Context;Ljava/lang/String;)V

    .line 857
    :cond_0
    :goto_0
    return-void

    .line 852
    :cond_1
    const-string v0, "support_smart_call"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 853
    if-eqz p1, :cond_0

    .line 854
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/PackageHelpers;->launchBlockSmartCall(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static spamReportClicked(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 830
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v3, v5}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 831
    .local v0, "call":Lcom/android/incallui/Call;
    const-string v4, "support_spam_call_report"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 832
    if-eqz v0, :cond_0

    .line 833
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/incallui/util/PackageHelpers;->launchReportSpamCall(Ljava/lang/String;)V

    .line 847
    :cond_0
    :goto_0
    return-void

    .line 835
    :cond_1
    const-string v4, "support_smart_call"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 837
    if-eqz v0, :cond_0

    .line 839
    :try_start_0
    invoke-static {p0}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v2

    .line 840
    .local v2, "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    if-eqz v2, :cond_2

    iget-object v3, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->smartCallInfo:Lcom/android/incallui/smartcall/SmartCallInfo;

    .line 841
    .local v3, "smartCallInfo":Lcom/android/incallui/smartcall/SmartCallInfo;
    :cond_2
    invoke-static {}, Lcom/android/incallui/util/NameNumberUtils;->getPhoneNumber()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/android/incallui/util/PackageHelpers;->launchReportSmartCall(Ljava/lang/String;Lcom/android/incallui/smartcall/SmartCallInfo;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 843
    .end local v2    # "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .end local v3    # "smartCallInfo":Lcom/android/incallui/smartcall/SmartCallInfo;
    :catch_0
    move-exception v1

    .line 844
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v4, "PackageHelpers"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RuntimeException is  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public static spamReportClicked(Landroid/content/Context;Lcom/android/incallui/Call;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 811
    const-string v3, "support_spam_call_report"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 812
    if-eqz p1, :cond_0

    .line 813
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/incallui/util/PackageHelpers;->launchReportSpamCall(Ljava/lang/String;)V

    .line 827
    :cond_0
    :goto_0
    return-void

    .line 815
    :cond_1
    const-string v3, "support_smart_call"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 817
    if-eqz p1, :cond_0

    .line 819
    :try_start_0
    invoke-static {p0}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v1

    .line 820
    .local v1, "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    if-eqz v1, :cond_2

    iget-object v2, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->smartCallInfo:Lcom/android/incallui/smartcall/SmartCallInfo;

    .line 821
    .local v2, "smartCallInfo":Lcom/android/incallui/smartcall/SmartCallInfo;
    :goto_1
    invoke-static {}, Lcom/android/incallui/util/NameNumberUtils;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/incallui/util/PackageHelpers;->launchReportSmartCall(Ljava/lang/String;Lcom/android/incallui/smartcall/SmartCallInfo;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 823
    .end local v1    # "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .end local v2    # "smartCallInfo":Lcom/android/incallui/smartcall/SmartCallInfo;
    :catch_0
    move-exception v0

    .line 824
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v3, "PackageHelpers"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RuntimeException is  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 820
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .restart local v1    # "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static supportActionMemo()Z
    .locals 1

    .prologue
    .line 519
    const-string v0, "use_action_memo_duringcall"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.samsung.android.snote"

    .line 520
    invoke-static {v0}, Lcom/android/incallui/util/PackageHelpers;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 521
    const/4 v0, 0x1

    .line 523
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static viewContactClicked()V
    .locals 9

    .prologue
    .line 628
    invoke-static {}, Lcom/android/incallui/util/PackageHelpers;->getPersonId()J

    move-result-wide v4

    .line 629
    .local v4, "personId":J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_0

    .line 630
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    .line 631
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v6, "content://com.android.contacts/contacts/"

    invoke-direct {v1, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 632
    .local v1, "bufId":Ljava/lang/StringBuffer;
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 633
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 634
    .local v3, "intent":Landroid/content/Intent;
    const-string v6, "from_call"

    const/4 v7, 0x1

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 635
    const/high16 v6, 0x30000000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 637
    if-eqz v0, :cond_0

    .line 638
    :try_start_0
    invoke-virtual {v0, v3}, Lcom/android/incallui/InCallActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 644
    .end local v0    # "activity":Lcom/android/incallui/InCallActivity;
    .end local v1    # "bufId":Ljava/lang/StringBuffer;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 640
    .restart local v0    # "activity":Lcom/android/incallui/InCallActivity;
    .restart local v1    # "bufId":Ljava/lang/StringBuffer;
    .restart local v3    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v2

    .line 641
    .local v2, "e":Landroid/content/ActivityNotFoundException;
    const-string v6, "PackageHelpers"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "startActivity() failed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static viewContactClicked(J)V
    .locals 8
    .param p0, "personId"    # J

    .prologue
    .line 647
    const-wide/16 v4, 0x0

    cmp-long v4, p0, v4

    if-lez v4, :cond_0

    .line 648
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 649
    .local v1, "context":Landroid/content/Context;
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v4, "content://com.android.contacts/contacts/"

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 650
    .local v0, "bufId":Ljava/lang/StringBuffer;
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 651
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 652
    .local v3, "intent":Landroid/content/Intent;
    const-string v4, "from_call"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 653
    const/high16 v4, 0x30000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 655
    if-eqz v1, :cond_0

    .line 656
    :try_start_0
    invoke-virtual {v1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 662
    .end local v0    # "bufId":Ljava/lang/StringBuffer;
    .end local v1    # "context":Landroid/content/Context;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 658
    .restart local v0    # "bufId":Ljava/lang/StringBuffer;
    .restart local v1    # "context":Landroid/content/Context;
    .restart local v3    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v2

    .line 659
    .local v2, "e":Landroid/content/ActivityNotFoundException;
    const-string v4, "PackageHelpers"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startActivity() failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
