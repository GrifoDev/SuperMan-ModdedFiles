.class Lcom/android/systemui/statusbar/car/CarNavigationBarController$2;
.super Ljava/lang/Object;
.source "CarNavigationBarController.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/car/CarNavigationBarController;->createNavButton(Landroid/graphics/drawable/Drawable;IZ)Lcom/android/systemui/statusbar/car/CarNavigationButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/car/CarNavigationBarController;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/car/CarNavigationBarController;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController$2;->this$0:Lcom/android/systemui/statusbar/car/CarNavigationBarController;

    iput p2, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController$2;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController$2;->this$0:Lcom/android/systemui/statusbar/car/CarNavigationBarController;

    iget v1, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController$2;->val$id:I

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->-wrap1(Lcom/android/systemui/statusbar/car/CarNavigationBarController;I)V

    const/4 v0, 0x1

    return v0
.end method
