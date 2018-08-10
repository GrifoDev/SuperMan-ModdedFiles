.class Landroid/widget/Editor$4;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Editor;->onCreateContextMenu(Landroid/view/ContextMenu;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/Editor;

.field final synthetic val$info:Landroid/widget/Editor$SuggestionInfo;


# direct methods
.method constructor <init>(Landroid/widget/Editor;Landroid/widget/Editor$SuggestionInfo;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/Editor$4;->this$0:Landroid/widget/Editor;

    iput-object p2, p0, Landroid/widget/Editor$4;->val$info:Landroid/widget/Editor$SuggestionInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    iget-object v0, p0, Landroid/widget/Editor$4;->this$0:Landroid/widget/Editor;

    iget-object v1, p0, Landroid/widget/Editor$4;->val$info:Landroid/widget/Editor$SuggestionInfo;

    invoke-static {v0, v1}, Landroid/widget/Editor;->-wrap22(Landroid/widget/Editor;Landroid/widget/Editor$SuggestionInfo;)V

    const/4 v0, 0x1

    return v0
.end method
