.class Lcom/samsung/android/settings/notification/SoundModeSettings$8$1;
.super Ljava/lang/Object;
.source "SoundModeSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/notification/SoundModeSettings$8;->onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/notification/SoundModeSettings$8;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/SoundModeSettings$8;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$8$1;->this$1:Lcom/samsung/android/settings/notification/SoundModeSettings$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$8$1;->this$1:Lcom/samsung/android/settings/notification/SoundModeSettings$8;

    iget-object v0, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$8;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-wrap5(Lcom/samsung/android/settings/notification/SoundModeSettings;)V

    return-void
.end method
