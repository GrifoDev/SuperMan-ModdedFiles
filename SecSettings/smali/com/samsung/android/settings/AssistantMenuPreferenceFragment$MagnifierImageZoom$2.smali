.class Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom$2;
.super Ljava/lang/Object;
.source "AssistantMenuPreferenceFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;

.field final synthetic val$defaultProgress:I


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom$2;->this$1:Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;

    iput p2, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom$2;->val$defaultProgress:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget v1, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom$2;->val$defaultProgress:I

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom$2;->this$1:Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;

    iget-boolean v2, v2, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mIsLongkeyProcessing:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x7

    if-ge v1, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom$2;->this$1:Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;

    iget-object v2, v2, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;->this$0:Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;

    invoke-virtual {v2}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "hover_zoom_value"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom$2;->this$1:Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;

    invoke-static {v2}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;->-get0(Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;)Lcom/samsung/android/settings/widget/IntervalSeekBar;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setProgress(I)V

    const-wide/16 v2, 0xc8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_0
    return-void
.end method
