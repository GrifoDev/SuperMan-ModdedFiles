.class Lcom/android/internal/app/AlertController$AlertParams$1;
.super Landroid/widget/ArrayAdapter;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/AlertController$AlertParams;->createListView(Lcom/android/internal/app/AlertController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/app/AlertController$AlertParams;

.field final synthetic val$listView:Lcom/android/internal/app/AlertController$RecycleListView;


# direct methods
.method constructor <init>(Lcom/android/internal/app/AlertController$AlertParams;Landroid/content/Context;II[Ljava/lang/CharSequence;Lcom/android/internal/app/AlertController$RecycleListView;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/internal/app/AlertController$AlertParams;
    .param p2, "$anonymous0"    # Landroid/content/Context;
    .param p3, "$anonymous1"    # I
    .param p4, "$anonymous2"    # I
    .param p5, "$anonymous3"    # [Ljava/lang/CharSequence;
    .param p6, "val$listView"    # Lcom/android/internal/app/AlertController$RecycleListView;

    .prologue
    .line 1170
    iput-object p1, p0, Lcom/android/internal/app/AlertController$AlertParams$1;->this$1:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p6, p0, Lcom/android/internal/app/AlertController$AlertParams$1;->val$listView:Lcom/android/internal/app/AlertController$RecycleListView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 1171
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1174
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1175
    .local v1, "view":Landroid/view/View;
    iget-object v2, p0, Lcom/android/internal/app/AlertController$AlertParams$1;->this$1:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v2, v2, Lcom/android/internal/app/AlertController$AlertParams;->mCheckedItems:[Z

    if-eqz v2, :cond_0

    .line 1176
    iget-object v2, p0, Lcom/android/internal/app/AlertController$AlertParams$1;->this$1:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v2, v2, Lcom/android/internal/app/AlertController$AlertParams;->mCheckedItems:[Z

    aget-boolean v0, v2, p1

    .line 1177
    .local v0, "isItemChecked":Z
    if-eqz v0, :cond_0

    .line 1178
    iget-object v2, p0, Lcom/android/internal/app/AlertController$AlertParams$1;->val$listView:Lcom/android/internal/app/AlertController$RecycleListView;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 1179
    invoke-virtual {v1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 1182
    .end local v0    # "isItemChecked":Z
    :cond_0
    return-object v1
.end method
