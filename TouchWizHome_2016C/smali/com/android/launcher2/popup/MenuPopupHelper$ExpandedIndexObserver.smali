.class Lcom/android/launcher2/popup/MenuPopupHelper$ExpandedIndexObserver;
.super Landroid/database/DataSetObserver;
.source "MenuPopupHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/popup/MenuPopupHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExpandedIndexObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/popup/MenuPopupHelper;


# direct methods
.method private constructor <init>(Lcom/android/launcher2/popup/MenuPopupHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/popup/MenuPopupHelper$ExpandedIndexObserver;->this$0:Lcom/android/launcher2/popup/MenuPopupHelper;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/popup/MenuPopupHelper;Lcom/android/launcher2/popup/MenuPopupHelper$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher2/popup/MenuPopupHelper$ExpandedIndexObserver;-><init>(Lcom/android/launcher2/popup/MenuPopupHelper;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/popup/MenuPopupHelper$ExpandedIndexObserver;->this$0:Lcom/android/launcher2/popup/MenuPopupHelper;

    invoke-static {v0}, Lcom/android/launcher2/popup/MenuPopupHelper;->access$500(Lcom/android/launcher2/popup/MenuPopupHelper;)Lcom/android/launcher2/popup/MenuPopupHelper$MenuAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/popup/MenuPopupHelper$MenuAdapter;->findExpandedIndex()V

    return-void
.end method
