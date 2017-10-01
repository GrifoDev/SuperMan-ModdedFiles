.class Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter$7;
.super Ljava/lang/Object;
.source "NavBarTuner.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;->showWidthDialog(Lcom/android/systemui/tuner/NavBarTuner$Holder;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;

.field final synthetic val$buttonSpec:Ljava/lang/String;

.field final synthetic val$dialog:Landroid/app/AlertDialog;

.field final synthetic val$holder:Lcom/android/systemui/tuner/NavBarTuner$Holder;


# direct methods
.method constructor <init>(Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;Ljava/lang/String;Landroid/app/AlertDialog;Lcom/android/systemui/tuner/NavBarTuner$Holder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter$7;->this$1:Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;

    iput-object p2, p0, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter$7;->val$buttonSpec:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter$7;->val$dialog:Landroid/app/AlertDialog;

    iput-object p4, p0, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter$7;->val$holder:Lcom/android/systemui/tuner/NavBarTuner$Holder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    iget-object v3, p0, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter$7;->val$buttonSpec:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->extractButton(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter$7;->val$dialog:Landroid/app/AlertDialog;

    const v4, 0x7f130284

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    const/16 v4, 0x4b

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter$7;->this$1:Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;

    invoke-static {v3}, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;->-get0(Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter$7;->val$holder:Lcom/android/systemui/tuner/NavBarTuner$Holder;

    invoke-virtual {v4}, Lcom/android/systemui/tuner/NavBarTuner$Holder;->getAdapterPosition()I

    move-result v4

    invoke-interface {v3, v4, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter$7;->this$1:Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;

    iget-object v3, v3, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;->this$0:Lcom/android/systemui/tuner/NavBarTuner;

    invoke-static {v3}, Lcom/android/systemui/tuner/NavBarTuner;->-wrap1(Lcom/android/systemui/tuner/NavBarTuner;)V

    return-void

    :cond_0
    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    add-int/lit8 v3, v3, 0x19

    int-to-float v3, v3

    const/high16 v4, 0x42c80000    # 100.0f

    div-float v0, v3, v4

    iget-object v3, p0, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter$7;->this$1:Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;

    invoke-static {v3}, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;->-get0(Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter$7;->val$holder:Lcom/android/systemui/tuner/NavBarTuner$Holder;

    invoke-virtual {v4}, Lcom/android/systemui/tuner/NavBarTuner$Holder;->getAdapterPosition()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
