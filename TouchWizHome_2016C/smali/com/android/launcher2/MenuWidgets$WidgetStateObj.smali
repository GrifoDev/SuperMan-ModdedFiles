.class abstract Lcom/android/launcher2/MenuWidgets$WidgetStateObj;
.super Ljava/lang/Object;
.source "MenuWidgets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/MenuWidgets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "WidgetStateObj"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/MenuWidgets;


# direct methods
.method constructor <init>(Lcom/android/launcher2/MenuWidgets;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateObj;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract enter(Lcom/android/launcher2/MenuWidgets$WidgetState;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher2/MenuWidgets$WidgetState;",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract exit(Lcom/android/launcher2/MenuWidgets$WidgetState;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher2/MenuWidgets$WidgetState;",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onClickWidget(Lcom/android/launcher2/HomePendingItem;Landroid/view/View;)V
.end method

.method public onVoiceSearch(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public refreshModel()V
    .locals 0

    return-void
.end method

.method public refreshView()V
    .locals 0

    return-void
.end method

.method public restore(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public save(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method
