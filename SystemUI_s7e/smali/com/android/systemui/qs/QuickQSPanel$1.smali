.class Lcom/android/systemui/qs/QuickQSPanel$1;
.super Ljava/lang/Object;
.source "QuickQSPanel.java"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QuickQSPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QuickQSPanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QuickQSPanel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QuickQSPanel$1;->this$0:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/QuickQSPanel$1;->this$0:Lcom/android/systemui/qs/QuickQSPanel;

    iget-object v1, p0, Lcom/android/systemui/qs/QuickQSPanel$1;->this$0:Lcom/android/systemui/qs/QuickQSPanel;

    iget-object v2, p0, Lcom/android/systemui/qs/QuickQSPanel$1;->this$0:Lcom/android/systemui/qs/QuickQSPanel;

    iget-object v2, v2, Lcom/android/systemui/qs/QuickQSPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/QuickQSPanel;->getNumQuickTiles(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QuickQSPanel;->setMaxTiles(I)V

    return-void
.end method
