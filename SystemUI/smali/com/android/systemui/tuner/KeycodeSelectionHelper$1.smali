.class final Lcom/android/systemui/tuner/KeycodeSelectionHelper$1;
.super Ljava/lang/Object;
.source "KeycodeSelectionHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/tuner/KeycodeSelectionHelper;->showKeycodeSelect(Landroid/content/Context;Lcom/android/systemui/tuner/KeycodeSelectionHelper$OnSelectionComplete;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/android/systemui/tuner/KeycodeSelectionHelper$OnSelectionComplete;


# direct methods
.method constructor <init>(Lcom/android/systemui/tuner/KeycodeSelectionHelper$OnSelectionComplete;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/tuner/KeycodeSelectionHelper$1;->val$listener:Lcom/android/systemui/tuner/KeycodeSelectionHelper$OnSelectionComplete;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/tuner/KeycodeSelectionHelper$1;->val$listener:Lcom/android/systemui/tuner/KeycodeSelectionHelper$OnSelectionComplete;

    invoke-static {}, Lcom/android/systemui/tuner/KeycodeSelectionHelper;->-get0()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/android/systemui/tuner/KeycodeSelectionHelper$OnSelectionComplete;->onSelectionComplete(I)V

    return-void
.end method
