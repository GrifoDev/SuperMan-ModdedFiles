.class Landroid/support/v17/leanback/widget/SearchBar$11;
.super Ljava/lang/Object;
.source "SearchBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/widget/SearchBar;->play(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/widget/SearchBar;

.field final synthetic val$resId:I


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/SearchBar;I)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/SearchBar$11;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    iput p2, p0, Landroid/support/v17/leanback/widget/SearchBar$11;->val$resId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/high16 v2, 0x3f800000    # 1.0f

    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar$11;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-static {v0}, Landroid/support/v17/leanback/widget/SearchBar;->-get7(Landroid/support/v17/leanback/widget/SearchBar;)Landroid/util/SparseIntArray;

    move-result-object v0

    iget v3, p0, Landroid/support/v17/leanback/widget/SearchBar$11;->val$resId:I

    invoke-virtual {v0, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar$11;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-static {v0}, Landroid/support/v17/leanback/widget/SearchBar;->-get8(Landroid/support/v17/leanback/widget/SearchBar;)Landroid/media/SoundPool;

    move-result-object v0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move v3, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    return-void
.end method
