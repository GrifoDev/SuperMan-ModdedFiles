.class Landroid/support/v17/leanback/app/FragmentUtil;
.super Ljava/lang/Object;
.source "FragmentUtil.java"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContext(Landroid/app/Fragment;)Landroid/content/Context;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Landroid/support/v17/leanback/app/FragmentUtil;->getContextNew(Landroid/app/Fragment;)Landroid/content/Context;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method private static getContextNew(Landroid/app/Fragment;)Landroid/content/Context;
    .locals 1
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x17
    .end annotation

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method
