.class Lcom/android/incallui/InCallContactInteractions$InCallContactInteractionsListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "InCallContactInteractions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/InCallContactInteractions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InCallContactInteractionsListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/incallui/InCallContactInteractions$ContactContextInfo;",
        ">;"
    }
.end annotation


# instance fields
.field mResId:I

.field final synthetic this$0:Lcom/android/incallui/InCallContactInteractions;


# direct methods
.method public constructor <init>(Lcom/android/incallui/InCallContactInteractions;Landroid/content/Context;I)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "resource"    # I

    .prologue
    .line 380
    iput-object p1, p0, Lcom/android/incallui/InCallContactInteractions$InCallContactInteractionsListAdapter;->this$0:Lcom/android/incallui/InCallContactInteractions;

    .line 381
    invoke-direct {p0, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 382
    iput p3, p0, Lcom/android/incallui/InCallContactInteractions$InCallContactInteractionsListAdapter;->mResId:I

    .line 383
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 387
    iget-object v2, p0, Lcom/android/incallui/InCallContactInteractions$InCallContactInteractionsListAdapter;->this$0:Lcom/android/incallui/InCallContactInteractions;

    # getter for: Lcom/android/incallui/InCallContactInteractions;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v2}, Lcom/android/incallui/InCallContactInteractions;->access$000(Lcom/android/incallui/InCallContactInteractions;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget v3, p0, Lcom/android/incallui/InCallContactInteractions$InCallContactInteractionsListAdapter;->mResId:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 388
    .local v1, "listItem":Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/android/incallui/InCallContactInteractions$InCallContactInteractionsListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallContactInteractions$ContactContextInfo;

    .line 390
    .local v0, "item":Lcom/android/incallui/InCallContactInteractions$ContactContextInfo;
    if-nez v0, :cond_0

    .line 395
    :goto_0
    return-object v1

    .line 394
    :cond_0
    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallContactInteractions$ContactContextInfo;->bindView(Landroid/view/View;)V

    goto :goto_0
.end method
