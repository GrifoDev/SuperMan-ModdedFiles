.class final synthetic Lcom/android/systemui/recents/views/-$Lambda$b3aJ66fcBRqRg8AO7nEh6AxI6eM$6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/-$Lambda$b3aJ66fcBRqRg8AO7nEh6AxI6eM$6;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/views/RecentsView;->lambda$-com_android_systemui_recents_views_RecentsView_59187(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/views/-$Lambda$b3aJ66fcBRqRg8AO7nEh6AxI6eM$6;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/-$Lambda$b3aJ66fcBRqRg8AO7nEh6AxI6eM$6;->$m$0(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
