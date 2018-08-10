.class Lcom/android/settings/SettingsActivity$15$1;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Lcom/android/settings/SettingsActivity$AvatarLoaderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SettingsActivity$15;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/settings/SettingsActivity$AvatarLoaderListener",
        "<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/SettingsActivity$15;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsActivity$15;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/SettingsActivity$15$1;->this$1:Lcom/android/settings/SettingsActivity$15;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleteLoad(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    const-string/jumbo v0, "Settings"

    const-string/jumbo v1, "onCompleteLoad"

    invoke-static {v0, v1}, Lcom/samsung/android/settingslib/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/SettingsActivity$15$1;->this$1:Lcom/android/settings/SettingsActivity$15;

    iget-object v0, v0, Lcom/android/settings/SettingsActivity$15;->this$0:Lcom/android/settings/SettingsActivity;

    invoke-static {v0, p1}, Lcom/android/settings/SettingsActivity;->-wrap5(Lcom/android/settings/SettingsActivity;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public bridge synthetic onCompleteLoad(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsActivity$15$1;->onCompleteLoad(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
