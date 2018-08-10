.class Lcom/android/systemui/recents/model/RecentsSettingHelper$12;
.super Landroid/database/ContentObserver;
.source "RecentsSettingHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/model/RecentsSettingHelper;->register()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/model/RecentsSettingHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/model/RecentsSettingHelper;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper$12;->this$0:Lcom/android/systemui/recents/model/RecentsSettingHelper;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;I)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper$12;->this$0:Lcom/android/systemui/recents/model/RecentsSettingHelper;

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper$12;->this$0:Lcom/android/systemui/recents/model/RecentsSettingHelper;

    invoke-static {v2}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->-get0(Lcom/android/systemui/recents/model/RecentsSettingHelper;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "vr_recents_mode"

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getGlobalSetting(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->-set8(Lcom/android/systemui/recents/model/RecentsSettingHelper;I)I

    return-void
.end method
