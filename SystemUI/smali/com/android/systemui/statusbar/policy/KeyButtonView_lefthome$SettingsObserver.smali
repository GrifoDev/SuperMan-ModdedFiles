.class Lcom/android/systemui/statusbar/policy/KeyButtonView_lefthome$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "KeyButtonView_lefthome.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/KeyButtonView_lefthome;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/KeyButtonView_lefthome;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/KeyButtonView_lefthome;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView_lefthome$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonView_lefthome;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method observe()V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView_lefthome$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonView_lefthome;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "cocoyaya_leftcornerhome"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView_lefthome$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonView_lefthome;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/KeyButtonView_lefthome;->updateSettings()V

    return-void
.end method
