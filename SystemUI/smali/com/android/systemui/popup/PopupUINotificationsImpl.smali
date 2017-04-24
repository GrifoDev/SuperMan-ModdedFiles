.class public Lcom/android/systemui/popup/PopupUINotificationsImpl;
.super Ljava/lang/Object;
.source "PopupUINotificationsImpl.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDataConnectionAlertDialog:Landroid/app/AlertDialog;

.field private mFlightModeEnabledAlertDialog:Landroid/app/AlertDialog;

.field private mResources:Landroid/content/res/Resources;

.field private mSIMCardTrayWaterProtectionAlertDialog:Landroid/app/AlertDialog;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/popup/PopupUINotificationsImpl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/popup/PopupUINotificationsImpl;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mSIMCardTrayWaterProtectionAlertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mResources:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public setDialogWindowType(Landroid/app/AlertDialog;I)V
    .locals 2

    packed-switch p2, :pswitch_data_0

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d8

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public showDataConnectionAlertDialogs(I)V
    .locals 22

    const-string/jumbo v18, "PopupUI.PopupUINotifications"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "showDataConnectionNotifications() : type "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mDataConnectionAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mDataConnectionAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v18

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mDataConnectionAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    const-string/jumbo v8, ""

    new-instance v4, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mDataConnectionAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mDataConnectionAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/popup/PopupUINotificationsImpl;->setDialogWindowType(Landroid/app/AlertDialog;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mDataConnectionAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/AlertDialog;->show()V

    return-void

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mResources:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f0f05e2

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mResources:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f0f05e3

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mResources:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f0f024c

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mResources:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f0f0017

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v18, Lcom/android/systemui/popup/PopupUINotificationsImpl$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/popup/PopupUINotificationsImpl$1;-><init>(Lcom/android/systemui/popup/PopupUINotificationsImpl;)V

    move-object/from16 v0, v18

    invoke-virtual {v4, v11, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v4, v8, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mResources:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f0f05e2

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mResources:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f0f05e4

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mResources:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x104062b

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mResources:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f0f0017

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v18, Lcom/android/systemui/popup/PopupUINotificationsImpl$2;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/popup/PopupUINotificationsImpl$2;-><init>(Lcom/android/systemui/popup/PopupUINotificationsImpl;)V

    move-object/from16 v0, v18

    invoke-virtual {v4, v11, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v4, v8, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mResources:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f0f05e2

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mResources:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f0f05e5

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mResources:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f0f04dd

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v4, v11, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string/jumbo v19, "phone"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/telephony/TelephonyManager;

    invoke-virtual {v14}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_4

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/NetworkPolicyManager;->getNetworkPolicies()[Landroid/net/NetworkPolicy;

    move-result-object v9

    if-eqz v9, :cond_2

    const/16 v18, 0x0

    array-length v0, v9

    move/from16 v19, v0

    :goto_1
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_2

    aget-object v10, v9, v18

    iget-object v0, v10, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/NetworkTemplate;->getSubscriberId()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1

    iget-object v0, v10, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    const/4 v6, 0x1

    :cond_1
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    :cond_2
    if-eqz v6, :cond_3

    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    new-instance v18, Landroid/content/ComponentName;

    const-string/jumbo v19, "com.android.systemui"

    const-string/jumbo v20, "com.android.systemui.net.NetworkOverLimitActivity"

    invoke-direct/range {v18 .. v20}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v18, 0x10000000

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {v13}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v15

    const-string/jumbo v18, "android.net.NETWORK_TEMPLATE"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_3
    const-string/jumbo v18, "PopupUI.PopupUINotifications"

    const-string/jumbo v19, "showDataConnectionNotifications() : hasPolicy is false"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    const-string/jumbo v18, "PopupUI.PopupUINotifications"

    const-string/jumbo v19, "showDataConnectionNotifications() : Failed TelephonyManager.getSubscriberId"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mResources:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f0f05e2

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string/jumbo v19, "phone"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/telephony/TelephonyManager;

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_5

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v18

    if-nez v18, :cond_6

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mResources:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f0f05e6

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mResources:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f0f05ea

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mResources:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f0f05eb

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v18, Lcom/android/systemui/popup/PopupUINotificationsImpl$3;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/popup/PopupUINotificationsImpl$3;-><init>(Lcom/android/systemui/popup/PopupUINotificationsImpl;)V

    move-object/from16 v0, v18

    invoke-virtual {v4, v11, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v4, v8, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mResources:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f0f05e7

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :pswitch_5
    const-string/jumbo v18, "PopupUI.PopupUINotifications"

    const-string/jumbo v19, "showDataConnectionNotifications() : doesn\'t AlertDialog.show()"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public showDataConnectionToastNotification()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f05e1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public showFlightModeEnabledAlertDialog()V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mFlightModeEnabledAlertDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mFlightModeEnabledAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mFlightModeEnabledAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0f05ed

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/statusbar/DeviceState;->isVolteEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/statusbar/DeviceState;->isVoWifiProvisioned(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0f05ef

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0f04dd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mFlightModeEnabledAlertDialog:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mFlightModeEnabledAlertDialog:Landroid/app/AlertDialog;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/popup/PopupUINotificationsImpl;->setDialogWindowType(Landroid/app/AlertDialog;I)V

    iget-object v2, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mFlightModeEnabledAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0f05ee

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public showMobileDeviceWarningToastNotification()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f05ec

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const-string/jumbo v0, "PopupUI.PopupUINotifications"

    const-string/jumbo v1, "showMobileDeviceWarningToastNotification()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public showSIMCardTrayWaterProtectionAlertDialog(IZ)V
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    if-eqz p2, :cond_1

    iget-object v7, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mSIMCardTrayWaterProtectionAlertDialog:Landroid/app/AlertDialog;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mSIMCardTrayWaterProtectionAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mSIMCardTrayWaterProtectionAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void

    :cond_1
    iget-object v7, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mSIMCardTrayWaterProtectionAlertDialog:Landroid/app/AlertDialog;

    if-nez v7, :cond_2

    new-instance v7, Landroid/view/ContextThemeWrapper;

    iget-object v8, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mContext:Landroid/content/Context;

    const v9, 0x1030132

    invoke-direct {v7, v8, v9}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v7, 0x7f040157

    invoke-virtual {v5, v7, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const v7, 0x7f1303ad

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget-boolean v7, Lcom/android/systemui/SystemUIRune;->SUPPORT_SIM_CARD_TRAY_ON_RIGHT_WATER_PROTECTION_POPUP:Z

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mResources:Landroid/content/res/Resources;

    const v8, 0x7f02055e

    invoke-virtual {v7, v8, v10}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    if-ne p1, v11, :cond_4

    const v6, 0x7f0f05f6

    :goto_1
    const v7, 0x7f1303ae

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mContext:Landroid/content/Context;

    invoke-direct {v3, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v7, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mResources:Landroid/content/res/Resources;

    const v8, 0x7f0f05f5

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mResources:Landroid/content/res/Resources;

    const v8, 0x7f0f04dd

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v7, Lcom/android/systemui/popup/PopupUINotificationsImpl$5;

    invoke-direct {v7, p0}, Lcom/android/systemui/popup/PopupUINotificationsImpl$5;-><init>(Lcom/android/systemui/popup/PopupUINotificationsImpl;)V

    invoke-virtual {v3, v7}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mSIMCardTrayWaterProtectionAlertDialog:Landroid/app/AlertDialog;

    iget-object v7, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mSIMCardTrayWaterProtectionAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0, v7, v11}, Lcom/android/systemui/popup/PopupUINotificationsImpl;->setDialogWindowType(Landroid/app/AlertDialog;I)V

    iget-object v7, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mSIMCardTrayWaterProtectionAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    :cond_2
    return-void

    :cond_3
    iget-object v7, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mResources:Landroid/content/res/Resources;

    const v8, 0x7f020563

    invoke-virtual {v7, v8, v10}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_4
    const v6, 0x7f0f05f7

    goto :goto_1
.end method
