.class Lcom/android/systemui/volume/ZenFooter$1;
.super Ljava/lang/Object;
.source "ZenFooter.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/ZenFooter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/ZenFooter;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/ZenFooter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/ZenFooter$1;->this$0:Lcom/android/systemui/volume/ZenFooter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigChanged(Landroid/service/notification/ZenModeConfig;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/ZenFooter$1;->this$0:Lcom/android/systemui/volume/ZenFooter;

    invoke-static {v0, p1}, Lcom/android/systemui/volume/ZenFooter;->-wrap1(Lcom/android/systemui/volume/ZenFooter;Landroid/service/notification/ZenModeConfig;)V

    return-void
.end method

.method public onZenChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/ZenFooter$1;->this$0:Lcom/android/systemui/volume/ZenFooter;

    invoke-static {v0, p1}, Lcom/android/systemui/volume/ZenFooter;->-wrap2(Lcom/android/systemui/volume/ZenFooter;I)V

    return-void
.end method
