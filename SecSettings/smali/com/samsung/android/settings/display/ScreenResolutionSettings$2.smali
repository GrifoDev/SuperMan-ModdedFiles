.class Lcom/samsung/android/settings/display/ScreenResolutionSettings$2;
.super Ljava/lang/Object;
.source "ScreenResolutionSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/ScreenResolutionSettings;->initswitchBtn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$2;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$2;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b043c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->-set1(I)I

    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$2;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->-get5()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$2;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
