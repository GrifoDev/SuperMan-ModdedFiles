.class Lcom/android/incallui/service/vt/VideoCallMetrics$Dimension;
.super Ljava/lang/Object;
.source "VideoCallMetrics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/service/vt/VideoCallMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Dimension"
.end annotation


# instance fields
.field public aspectRatio:F

.field public height:I

.field final synthetic this$0:Lcom/android/incallui/service/vt/VideoCallMetrics;

.field public width:I


# direct methods
.method public constructor <init>(Lcom/android/incallui/service/vt/VideoCallMetrics;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$Dimension;->this$0:Lcom/android/incallui/service/vt/VideoCallMetrics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Lcom/android/incallui/service/vt/VideoCallMetrics$Dimension;)V
    .locals 1

    iget v0, p1, Lcom/android/incallui/service/vt/VideoCallMetrics$Dimension;->width:I

    iput v0, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$Dimension;->width:I

    iget v0, p1, Lcom/android/incallui/service/vt/VideoCallMetrics$Dimension;->height:I

    iput v0, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$Dimension;->height:I

    iget v0, p1, Lcom/android/incallui/service/vt/VideoCallMetrics$Dimension;->aspectRatio:F

    iput v0, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$Dimension;->aspectRatio:F

    return-void
.end method
