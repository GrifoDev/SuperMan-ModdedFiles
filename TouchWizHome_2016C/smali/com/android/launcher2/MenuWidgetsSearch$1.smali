.class Lcom/android/launcher2/MenuWidgetsSearch$1;
.super Ljava/lang/Object;
.source "MenuWidgetsSearch.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/MenuWidgetsSearch;-><init>(Lcom/android/launcher2/MenuView;Lcom/android/launcher2/MenuWidgets;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/MenuWidgetsSearch;


# direct methods
.method constructor <init>(Lcom/android/launcher2/MenuWidgetsSearch;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/MenuWidgetsSearch$1;->this$0:Lcom/android/launcher2/MenuWidgetsSearch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    if-nez p2, :cond_0

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/launcher2/utils/SIPHelper;->hideInputMethod(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method
