.class Lcom/android/incallui/util/DebugScreen$1;
.super Lcom/android/incallui/util/DebugScreen$CustomDragShadowBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/util/DebugScreen;->startDrag()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/util/DebugScreen;


# direct methods
.method constructor <init>(Lcom/android/incallui/util/DebugScreen;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/util/DebugScreen$1;->this$0:Lcom/android/incallui/util/DebugScreen;

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/util/DebugScreen$CustomDragShadowBuilder;-><init>(Lcom/android/incallui/util/DebugScreen;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getDragShadowDrawable(Landroid/view/View;)Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
