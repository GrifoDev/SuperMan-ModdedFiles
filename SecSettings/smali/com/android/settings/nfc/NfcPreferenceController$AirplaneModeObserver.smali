.class final Lcom/android/settings/nfc/NfcPreferenceController$AirplaneModeObserver;
.super Landroid/database/ContentObserver;
.source "NfcPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/nfc/NfcPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AirplaneModeObserver"
.end annotation


# instance fields
.field private final AIRPLANE_MODE_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/settings/nfc/NfcPreferenceController;


# direct methods
.method private constructor <init>(Lcom/android/settings/nfc/NfcPreferenceController;)V
    .locals 1

    iput-object p1, p0, Lcom/android/settings/nfc/NfcPreferenceController$AirplaneModeObserver;->this$0:Lcom/android/settings/nfc/NfcPreferenceController;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string/jumbo v0, "airplane_mode_on"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nfc/NfcPreferenceController$AirplaneModeObserver;->AIRPLANE_MODE_URI:Landroid/net/Uri;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/nfc/NfcPreferenceController;Lcom/android/settings/nfc/NfcPreferenceController$AirplaneModeObserver;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/nfc/NfcPreferenceController$AirplaneModeObserver;-><init>(Lcom/android/settings/nfc/NfcPreferenceController;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    iget-object v0, p0, Lcom/android/settings/nfc/NfcPreferenceController$AirplaneModeObserver;->this$0:Lcom/android/settings/nfc/NfcPreferenceController;

    invoke-static {v0}, Lcom/android/settings/nfc/NfcPreferenceController;->-wrap0(Lcom/android/settings/nfc/NfcPreferenceController;)V

    return-void
.end method

.method public register()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/nfc/NfcPreferenceController$AirplaneModeObserver;->this$0:Lcom/android/settings/nfc/NfcPreferenceController;

    invoke-static {v0}, Lcom/android/settings/nfc/NfcPreferenceController;->-get0(Lcom/android/settings/nfc/NfcPreferenceController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/nfc/NfcPreferenceController$AirplaneModeObserver;->AIRPLANE_MODE_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public unregister()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/nfc/NfcPreferenceController$AirplaneModeObserver;->this$0:Lcom/android/settings/nfc/NfcPreferenceController;

    invoke-static {v0}, Lcom/android/settings/nfc/NfcPreferenceController;->-get0(Lcom/android/settings/nfc/NfcPreferenceController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
