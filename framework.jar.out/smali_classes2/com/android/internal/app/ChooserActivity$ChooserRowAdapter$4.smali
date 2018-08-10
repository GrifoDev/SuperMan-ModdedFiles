.class Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$4;
.super Ljava/lang/Object;
.source "ChooserActivity.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->createViewHolder(Landroid/view/ViewGroup;)Lcom/android/internal/app/ChooserActivity$RowViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$4;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    const/4 v0, 0x0

    return v0
.end method
