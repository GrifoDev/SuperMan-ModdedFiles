.class Lcom/android/launcher2/HomeScreenGridChangeHelper$1;
.super Ljava/lang/Object;
.source "HomeScreenGridChangeHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/HomeScreenGridChangeHelper;->changeGrid(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/HomeScreenGridChangeHelper;


# direct methods
.method constructor <init>(Lcom/android/launcher2/HomeScreenGridChangeHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/HomeScreenGridChangeHelper$1;->this$0:Lcom/android/launcher2/HomeScreenGridChangeHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeScreenGridChangeHelper$1;->this$0:Lcom/android/launcher2/HomeScreenGridChangeHelper;

    invoke-static {v0}, Lcom/android/launcher2/HomeScreenGridChangeHelper;->access$000(Lcom/android/launcher2/HomeScreenGridChangeHelper;)Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewWorkspace;->resetAdditionalPageCount()V

    iget-object v0, p0, Lcom/android/launcher2/HomeScreenGridChangeHelper$1;->this$0:Lcom/android/launcher2/HomeScreenGridChangeHelper;

    invoke-static {v0}, Lcom/android/launcher2/HomeScreenGridChangeHelper;->access$100(Lcom/android/launcher2/HomeScreenGridChangeHelper;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher2/HomeScreenGridChangeHelper;->mChangeGridState:Z

    return-void
.end method
