.class Lcom/android/settings/applications/defaultapps/DefaultPhonePicker$DefaultKeyUpdater;
.super Ljava/lang/Object;
.source "DefaultPhonePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/defaultapps/DefaultPhonePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DefaultKeyUpdater"
.end annotation


# instance fields
.field private final mTelecomManager:Landroid/telecom/TelecomManager;


# direct methods
.method public constructor <init>(Landroid/telecom/TelecomManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/defaultapps/DefaultPhonePicker$DefaultKeyUpdater;->mTelecomManager:Landroid/telecom/TelecomManager;

    return-void
.end method


# virtual methods
.method public getDefaultDialerApplication(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    invoke-static {p1, p2}, Landroid/telecom/DefaultDialerManager;->getDefaultDialerApplication(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSystemDialerPackage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultPhonePicker$DefaultKeyUpdater;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->getSystemDialerPackage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
