.class final synthetic Lcom/android/settings/search2/-$Lambda$4dSYu1oUzywOEH2IlPt1zFrPXyg;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;

.field private final synthetic -$f2:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Landroid/widget/CompoundButton;Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/search2/-$Lambda$4dSYu1oUzywOEH2IlPt1zFrPXyg;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/search2/InlineSwitchViewHolder;

    iget-object v1, p0, Lcom/android/settings/search2/-$Lambda$4dSYu1oUzywOEH2IlPt1zFrPXyg;->-$f1:Ljava/lang/Object;

    check-cast v1, Lcom/android/settings/search2/InlineSwitchPayload;

    iget-object v2, p0, Lcom/android/settings/search2/-$Lambda$4dSYu1oUzywOEH2IlPt1zFrPXyg;->-$f2:Ljava/lang/Object;

    check-cast v2, Lcom/android/settings/search2/SearchFragment;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/android/settings/search2/InlineSwitchViewHolder;->lambda$-com_android_settings_search2_InlineSwitchViewHolder_1642(Lcom/android/settings/search2/InlineSwitchPayload;Lcom/android/settings/search2/SearchFragment;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/search2/-$Lambda$4dSYu1oUzywOEH2IlPt1zFrPXyg;->-$f0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/settings/search2/-$Lambda$4dSYu1oUzywOEH2IlPt1zFrPXyg;->-$f1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/settings/search2/-$Lambda$4dSYu1oUzywOEH2IlPt1zFrPXyg;->-$f2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/search2/-$Lambda$4dSYu1oUzywOEH2IlPt1zFrPXyg;->$m$0(Landroid/widget/CompoundButton;Z)V

    return-void
.end method
