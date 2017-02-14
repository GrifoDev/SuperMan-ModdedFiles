.class Lcom/android/settings/DreamSettings$DreamInfoPreference$3;
.super Ljava/lang/Object;
.source "DreamSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DreamSettings$DreamInfoPreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/DreamSettings$DreamInfoPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/DreamSettings$DreamInfoPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/DreamSettings$DreamInfoPreference$3;->this$1:Lcom/android/settings/DreamSettings$DreamInfoPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/DreamSettings$DreamInfoPreference$3;->this$1:Lcom/android/settings/DreamSettings$DreamInfoPreference;

    iget-object v0, v0, Lcom/android/settings/DreamSettings$DreamInfoPreference;->this$0:Lcom/android/settings/DreamSettings;

    invoke-static {v0}, Lcom/android/settings/DreamSettings;->-get3(Lcom/android/settings/DreamSettings;)Lcom/android/settingslib/dream/DreamBackend;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DreamSettings$DreamInfoPreference$3;->this$1:Lcom/android/settings/DreamSettings$DreamInfoPreference;

    invoke-static {v1}, Lcom/android/settings/DreamSettings$DreamInfoPreference;->-get0(Lcom/android/settings/DreamSettings$DreamInfoPreference;)Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/dream/DreamBackend;->launchSettings(Lcom/android/settingslib/dream/DreamBackend$DreamInfo;)V

    return-void
.end method
