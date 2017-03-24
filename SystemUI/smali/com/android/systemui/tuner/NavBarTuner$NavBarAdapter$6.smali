.class Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter$6;
.super Ljava/lang/Object;
.source "NavBarTuner.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;->showKeyDialogs(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$listener:Lcom/android/systemui/tuner/KeycodeSelectionHelper$OnSelectionComplete;


# direct methods
.method constructor <init>(Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;Landroid/content/Context;Lcom/android/systemui/tuner/KeycodeSelectionHelper$OnSelectionComplete;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter$6;->this$1:Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;

    iput-object p2, p0, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter$6;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter$6;->val$listener:Lcom/android/systemui/tuner/KeycodeSelectionHelper$OnSelectionComplete;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter$6;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter$6;->val$listener:Lcom/android/systemui/tuner/KeycodeSelectionHelper$OnSelectionComplete;

    invoke-static {v0, v1}, Lcom/android/systemui/tuner/KeycodeSelectionHelper;->showKeycodeSelect(Landroid/content/Context;Lcom/android/systemui/tuner/KeycodeSelectionHelper$OnSelectionComplete;)V

    return-void
.end method
