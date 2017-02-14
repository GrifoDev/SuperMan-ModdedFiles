.class Lcom/android/launcher2/MenuAppsSearch$2;
.super Ljava/lang/Object;
.source "MenuAppsSearch.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/MenuAppsSearch;->enter(Lcom/android/launcher2/MenuAppsGrid$State;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/MenuAppsSearch;


# direct methods
.method constructor <init>(Lcom/android/launcher2/MenuAppsSearch;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/MenuAppsSearch$2;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    invoke-static {p1, v0}, Lcom/android/launcher2/utils/SIPHelper;->hideInputMethod(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method
