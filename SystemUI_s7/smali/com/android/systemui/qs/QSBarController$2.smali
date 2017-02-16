.class Lcom/android/systemui/qs/QSBarController$2;
.super Ljava/lang/Object;
.source "QSBarController.java"

# interfaces
.implements Lcom/android/systemui/qs/QSBarItem$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/QSBarController;->loadBarSpecs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSBarController;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSBarController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSBarController$2;->this$0:Lcom/android/systemui/qs/QSBarController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHeightChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSBarController$2;->this$0:Lcom/android/systemui/qs/QSBarController;

    invoke-static {v0}, Lcom/android/systemui/qs/QSBarController;->-wrap0(Lcom/android/systemui/qs/QSBarController;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSBarController$2;->this$0:Lcom/android/systemui/qs/QSBarController;

    invoke-static {v0}, Lcom/android/systemui/qs/QSBarController;->-get0(Lcom/android/systemui/qs/QSBarController;)Lcom/android/systemui/statusbar/phone/QSTileHost;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSBarController$2;->this$0:Lcom/android/systemui/qs/QSBarController;

    invoke-static {v0}, Lcom/android/systemui/qs/QSBarController;->-get0(Lcom/android/systemui/qs/QSBarController;)Lcom/android/systemui/statusbar/phone/QSTileHost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/QSTileHost;->setQsExpansionHeight()V

    :cond_0
    return-void
.end method
