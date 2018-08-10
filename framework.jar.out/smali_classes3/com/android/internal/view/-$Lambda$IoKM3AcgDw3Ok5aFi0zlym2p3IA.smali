.class final synthetic Lcom/android/internal/view/-$Lambda$IoKM3AcgDw3Ok5aFi0zlym2p3IA;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/view/-$Lambda$IoKM3AcgDw3Ok5aFi0zlym2p3IA;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/view/FloatingActionMode;

    invoke-virtual {v0, p1}, Lcom/android/internal/view/FloatingActionMode;->lambda$-com_android_internal_view_FloatingActionMode_5690(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/view/-$Lambda$IoKM3AcgDw3Ok5aFi0zlym2p3IA;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/internal/view/-$Lambda$IoKM3AcgDw3Ok5aFi0zlym2p3IA;->$m$0(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
