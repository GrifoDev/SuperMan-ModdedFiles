.class Lcom/android/systemui/qs/tiles/ScreenCaptureTile$ScreenCaptureDetailAdapter$2;
.super Ljava/lang/Object;
.source "ScreenCaptureTile.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/ScreenCaptureTile$ScreenCaptureDetailAdapter;->createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/qs/tiles/ScreenCaptureTile$ScreenCaptureDetailAdapter;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/ScreenCaptureTile$ScreenCaptureDetailAdapter;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$ScreenCaptureDetailAdapter$2;->this$1:Lcom/android/systemui/qs/tiles/ScreenCaptureTile$ScreenCaptureDetailAdapter;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$ScreenCaptureDetailAdapter$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$ScreenCaptureDetailAdapter$2;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "enable_smart_capture"

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
