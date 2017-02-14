.class public abstract Lcom/android/launcher2/FolderContent;
.super Ljava/lang/Object;
.source "FolderContent.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addItems(Lcom/android/launcher2/FolderItem;Lcom/android/launcher2/ItemViewBuilder;)I
.end method

.method public abstract getContentView()Lcom/android/launcher2/CellLayoutNoGap;
.end method

.method public abstract getContentViewByPage(I)Lcom/android/launcher2/CellLayoutNoGap;
.end method

.method public abstract getPageCount()I
.end method

.method public abstract getPagedView()Lcom/android/launcher2/FolderPagedView;
.end method

.method public abstract getScrollView()Landroid/widget/ScrollView;
.end method

.method public abstract inflateContentView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
.end method
