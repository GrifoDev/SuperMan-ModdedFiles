.class Lcom/android/settings/SettingsActivity$15;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SettingsActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/SettingsActivity$15;->this$0:Lcom/android/settings/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/SettingsActivity$15;->this$0:Lcom/android/settings/SettingsActivity;

    invoke-static {v0}, Lcom/android/settings/SettingsActivity;->-get6(Lcom/android/settings/SettingsActivity;)Lcom/android/settings/SettingsActivity$ProfileImageLoader;

    move-result-object v0

    new-instance v1, Lcom/android/settings/SettingsActivity$15$1;

    invoke-direct {v1, p0}, Lcom/android/settings/SettingsActivity$15$1;-><init>(Lcom/android/settings/SettingsActivity$15;)V

    invoke-static {v0, v1}, Lcom/android/settings/SettingsActivity$ProfileImageLoader;->-wrap0(Lcom/android/settings/SettingsActivity$ProfileImageLoader;Lcom/android/settings/SettingsActivity$AvatarLoaderListener;)V

    return-void
.end method
