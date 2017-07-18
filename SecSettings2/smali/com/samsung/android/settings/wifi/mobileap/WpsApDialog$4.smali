.class Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$4;
.super Ljava/lang/Object;
.source "WpsApDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->updateDialog(Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final synthetic -com-samsung-android-settings-wifi-mobileap-WpsApDialog$DialogStateSwitchesValues:[I


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;

.field final synthetic val$msg:Ljava/lang/String;

.field final synthetic val$state:Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;


# direct methods
.method private static synthetic -getcom-samsung-android-settings-wifi-mobileap-WpsApDialog$DialogStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$4;->-com-samsung-android-settings-wifi-mobileap-WpsApDialog$DialogStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$4;->-com-samsung-android-settings-wifi-mobileap-WpsApDialog$DialogStateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;->values()[Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;->CONNECTED:Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v1, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;->WPS_COMPLETE:Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v1, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;->WPS_FAILED:Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v1, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;->WPS_INIT:Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v1, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;->WPS_START:Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    sput-object v0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$4;->-com-samsung-android-settings-wifi-mobileap-WpsApDialog$DialogStateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_0
.end method

.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$4;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$4;->val$state:Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$4;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/16 v2, 0x8

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$4;->-getcom-samsung-android-settings-wifi-mobileap-WpsApDialog$DialogStateSwitchesValues()[I

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$4;->val$state:Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$4;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->-get4(Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$4;->val$msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$4;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->-get5(Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$4;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->-get3(Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$4;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f0b153c

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$4;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->-get5(Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$4;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->-get3(Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
