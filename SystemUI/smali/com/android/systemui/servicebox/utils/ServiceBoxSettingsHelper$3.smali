.class Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper$3;
.super Ljava/lang/Object;
.source "ServiceBoxSettingsHelper.java"

# interfaces
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;-><init>(Landroid/content/Context;Lcom/android/systemui/servicebox/KeyguardServiceBoxController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper$3;->this$0:Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Landroid/net/Uri;)V
    .locals 3

    sget-object v0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onChanged() uri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper$3;->this$0:Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->-get5(Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;)Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper$3;->this$0:Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->-get5(Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;)Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;->onSettingsChanged(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method
