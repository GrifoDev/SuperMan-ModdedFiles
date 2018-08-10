.class final synthetic Lcom/android/systemui/recents/desktop/-$Lambda$HlCRr-kXl_EmkjzJQsF-KrY8kIA$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/-$Lambda$HlCRr-kXl_EmkjzJQsF-KrY8kIA$2;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/recents/desktop/RecentsWindow;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/desktop/RecentsWindow;->lambda$-com_android_systemui_recents_desktop_RecentsWindow_9481(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/desktop/-$Lambda$HlCRr-kXl_EmkjzJQsF-KrY8kIA$2;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/desktop/-$Lambda$HlCRr-kXl_EmkjzJQsF-KrY8kIA$2;->$m$0(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
