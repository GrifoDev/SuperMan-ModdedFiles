.class Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$1;
.super Ljava/lang/Object;
.source "LightBarTransitionsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$1;->this$0:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$1;->this$0:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->-set0(Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;Z)Z

    return-void
.end method
