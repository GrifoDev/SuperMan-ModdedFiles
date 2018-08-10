.class Lcom/samsung/android/settings/wifi/CharterWifiController$1;
.super Landroid/content/AsyncQueryHandler;
.source "CharterWifiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/CharterWifiController;->callContentProvider(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final synthetic -com-samsung-android-settings-wifi-CharterWifiController$CHA_RESULTSwitchesValues:[I


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/CharterWifiController;


# direct methods
.method private static synthetic -getcom-samsung-android-settings-wifi-CharterWifiController$CHA_RESULTSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/samsung/android/settings/wifi/CharterWifiController$1;->-com-samsung-android-settings-wifi-CharterWifiController$CHA_RESULTSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/settings/wifi/CharterWifiController$1;->-com-samsung-android-settings-wifi-CharterWifiController$CHA_RESULTSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/wifi/CharterWifiController$CHA_RESULT;->values()[Lcom/samsung/android/settings/wifi/CharterWifiController$CHA_RESULT;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/samsung/android/settings/wifi/CharterWifiController$CHA_RESULT;->SERVICE_ERROR:Lcom/samsung/android/settings/wifi/CharterWifiController$CHA_RESULT;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/CharterWifiController$CHA_RESULT;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lcom/samsung/android/settings/wifi/CharterWifiController$CHA_RESULT;->STARTED:Lcom/samsung/android/settings/wifi/CharterWifiController$CHA_RESULT;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/CharterWifiController$CHA_RESULT;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/samsung/android/settings/wifi/CharterWifiController$CHA_RESULT;->STOPPED:Lcom/samsung/android/settings/wifi/CharterWifiController$CHA_RESULT;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/CharterWifiController$CHA_RESULT;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/samsung/android/settings/wifi/CharterWifiController$1;->-com-samsung-android-settings-wifi-CharterWifiController$CHA_RESULTSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method constructor <init>(Lcom/samsung/android/settings/wifi/CharterWifiController;Landroid/content/ContentResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/CharterWifiController$1;->this$0:Lcom/samsung/android/settings/wifi/CharterWifiController;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eq v1, v3, :cond_2

    :cond_0
    const-string/jumbo v1, "CharterWifiController"

    const-string/jumbo v2, "Error in starting connection Service!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/CharterWifiController$1;->this$0:Lcom/samsung/android/settings/wifi/CharterWifiController;

    invoke-static {v1, v4}, Lcom/samsung/android/settings/wifi/CharterWifiController;->-wrap0(Lcom/samsung/android/settings/wifi/CharterWifiController;Z)V

    if-eqz p3, :cond_1

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_1
    return-void

    :cond_2
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-static {}, Lcom/samsung/android/settings/wifi/CharterWifiController$CHA_RESULT;->values()[Lcom/samsung/android/settings/wifi/CharterWifiController$CHA_RESULT;

    move-result-object v1

    const-string/jumbo v2, "status"

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    aget-object v0, v1, v2

    invoke-static {}, Lcom/samsung/android/settings/wifi/CharterWifiController$1;->-getcom-samsung-android-settings-wifi-CharterWifiController$CHA_RESULTSwitchesValues()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/CharterWifiController$CHA_RESULT;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/CharterWifiController$1;->this$0:Lcom/samsung/android/settings/wifi/CharterWifiController;

    invoke-static {v1, v3}, Lcom/samsung/android/settings/wifi/CharterWifiController;->-wrap0(Lcom/samsung/android/settings/wifi/CharterWifiController;Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/CharterWifiController$1;->this$0:Lcom/samsung/android/settings/wifi/CharterWifiController;

    invoke-static {v1, v4}, Lcom/samsung/android/settings/wifi/CharterWifiController;->-wrap1(Lcom/samsung/android/settings/wifi/CharterWifiController;Z)V

    const-string/jumbo v1, "CharterWifiController"

    const-string/jumbo v2, "Connection service is stopped..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/CharterWifiController$1;->this$0:Lcom/samsung/android/settings/wifi/CharterWifiController;

    invoke-static {v1, v3}, Lcom/samsung/android/settings/wifi/CharterWifiController;->-wrap0(Lcom/samsung/android/settings/wifi/CharterWifiController;Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/CharterWifiController$1;->this$0:Lcom/samsung/android/settings/wifi/CharterWifiController;

    invoke-static {v1, v3}, Lcom/samsung/android/settings/wifi/CharterWifiController;->-wrap1(Lcom/samsung/android/settings/wifi/CharterWifiController;Z)V

    const-string/jumbo v1, "CharterWifiController"

    const-string/jumbo v2, "Connection service is started..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/CharterWifiController$1;->this$0:Lcom/samsung/android/settings/wifi/CharterWifiController;

    invoke-static {v1, v4}, Lcom/samsung/android/settings/wifi/CharterWifiController;->-wrap0(Lcom/samsung/android/settings/wifi/CharterWifiController;Z)V

    const-string/jumbo v1, "CharterWifiController"

    const-string/jumbo v2, "Error..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
