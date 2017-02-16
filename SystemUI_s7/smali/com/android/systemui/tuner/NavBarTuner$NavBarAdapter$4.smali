.class Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter$4;
.super Ljava/lang/Object;
.source "NavBarTuner.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;->showAddDialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$labels:[Ljava/lang/CharSequence;

.field final synthetic val$options:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;[Ljava/lang/String;Landroid/content/Context;[Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter$4;->this$1:Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;

    iput-object p2, p0, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter$4;->val$options:[Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter$4;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter$4;->val$labels:[Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const-string/jumbo v1, "key"

    iget-object v2, p0, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter$4;->val$options:[Ljava/lang/String;

    aget-object v2, v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter$4;->this$1:Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;

    iget-object v2, p0, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter$4;->val$context:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;->-wrap3(Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;Landroid/content/Context;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter$4;->this$1:Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;

    invoke-static {v1}, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;->-get0(Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    iget-object v1, p0, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter$4;->this$1:Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;

    iget-object v2, p0, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter$4;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter$4;->val$options:[Ljava/lang/String;

    aget-object v3, v3, p2

    invoke-static {v1, v2, v3}, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;->-wrap2(Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter$4;->this$1:Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;

    invoke-static {v1}, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;->-get0(Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter$4;->val$options:[Ljava/lang/String;

    aget-object v2, v2, p2

    invoke-interface {v1, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter$4;->this$1:Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;

    invoke-static {v1}, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;->-get2(Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter$4;->val$labels:[Ljava/lang/CharSequence;

    aget-object v2, v2, p2

    invoke-interface {v1, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter$4;->this$1:Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;

    invoke-virtual {v1, v0}, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;->notifyItemInserted(I)V

    iget-object v1, p0, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter$4;->this$1:Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;

    iget-object v1, v1, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;->this$0:Lcom/android/systemui/tuner/NavBarTuner;

    invoke-static {v1}, Lcom/android/systemui/tuner/NavBarTuner;->-wrap1(Lcom/android/systemui/tuner/NavBarTuner;)V

    goto :goto_0
.end method
