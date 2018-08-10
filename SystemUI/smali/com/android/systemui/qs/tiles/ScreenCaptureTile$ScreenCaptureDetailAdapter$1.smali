.class Lcom/android/systemui/qs/tiles/ScreenCaptureTile$ScreenCaptureDetailAdapter$1;
.super Ljava/lang/Object;
.source "ScreenCaptureTile.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


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


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/ScreenCaptureTile$ScreenCaptureDetailAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$ScreenCaptureDetailAdapter$1;->this$1:Lcom/android/systemui/qs/tiles/ScreenCaptureTile$ScreenCaptureDetailAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$ScreenCaptureDetailAdapter$1;->this$1:Lcom/android/systemui/qs/tiles/ScreenCaptureTile$ScreenCaptureDetailAdapter;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$ScreenCaptureDetailAdapter;->-get1(Lcom/android/systemui/qs/tiles/ScreenCaptureTile$ScreenCaptureDetailAdapter;)Landroid/widget/RadioGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$ScreenCaptureDetailAdapter$1;->this$1:Lcom/android/systemui/qs/tiles/ScreenCaptureTile$ScreenCaptureDetailAdapter;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$ScreenCaptureDetailAdapter;->-get0(Lcom/android/systemui/qs/tiles/ScreenCaptureTile$ScreenCaptureDetailAdapter;)[Landroid/widget/RadioButton;

    move-result-object v1

    aget-object v1, v1, v3

    invoke-virtual {v1}, Landroid/widget/RadioButton;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$ScreenCaptureDetailAdapter$1;->this$1:Lcom/android/systemui/qs/tiles/ScreenCaptureTile$ScreenCaptureDetailAdapter;

    iget-object v1, v1, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$ScreenCaptureDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/ScreenCaptureTile;

    invoke-static {v1, v3}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->-set0(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;I)I

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$ScreenCaptureDetailAdapter$1;->this$1:Lcom/android/systemui/qs/tiles/ScreenCaptureTile$ScreenCaptureDetailAdapter;

    iget-object v1, v1, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$ScreenCaptureDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/ScreenCaptureTile;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->-wrap4(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;Ljava/lang/Object;)V

    sget-object v1, Lcom/android/systemui/SystemUIAnalytics;->mCurrentScreenID:Ljava/lang/String;

    const-string/jumbo v2, "9050"

    invoke-static {v1, v2}, Lcom/android/systemui/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$ScreenCaptureDetailAdapter$1;->this$1:Lcom/android/systemui/qs/tiles/ScreenCaptureTile$ScreenCaptureDetailAdapter;

    iget-object v1, v1, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$ScreenCaptureDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/ScreenCaptureTile;

    invoke-virtual {v1}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->updateDetail()V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$ScreenCaptureDetailAdapter$1;->this$1:Lcom/android/systemui/qs/tiles/ScreenCaptureTile$ScreenCaptureDetailAdapter;

    iget-object v1, v1, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$ScreenCaptureDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/ScreenCaptureTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->-get2(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "capture_tile_mode"

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$ScreenCaptureDetailAdapter$1;->this$1:Lcom/android/systemui/qs/tiles/ScreenCaptureTile$ScreenCaptureDetailAdapter;

    iget-object v3, v3, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$ScreenCaptureDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/ScreenCaptureTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->-get1(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;)I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$ScreenCaptureDetailAdapter$1;->this$1:Lcom/android/systemui/qs/tiles/ScreenCaptureTile$ScreenCaptureDetailAdapter;

    iget-object v1, v1, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$ScreenCaptureDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/ScreenCaptureTile;

    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->-set0(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;I)I

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$ScreenCaptureDetailAdapter$1;->this$1:Lcom/android/systemui/qs/tiles/ScreenCaptureTile$ScreenCaptureDetailAdapter;

    iget-object v1, v1, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$ScreenCaptureDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/ScreenCaptureTile;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->-wrap4(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;Ljava/lang/Object;)V

    sget-object v1, Lcom/android/systemui/SystemUIAnalytics;->mCurrentScreenID:Ljava/lang/String;

    const-string/jumbo v2, "9051"

    invoke-static {v1, v2}, Lcom/android/systemui/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
