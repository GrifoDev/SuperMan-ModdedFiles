.class public Landroid/content/res/ConfigurationBoundResourceCache;
.super Landroid/content/res/ThemedResourceCache;
.source "ConfigurationBoundResourceCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/content/res/ThemedResourceCache",
        "<",
        "Landroid/content/res/ConstantState",
        "<TT;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/res/ThemedResourceCache;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get(JLandroid/content/res/Resources$Theme;)Ljava/lang/Object;
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/content/res/ThemedResourceCache;->get(JLandroid/content/res/Resources$Theme;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getInstance(JLandroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/Resources$Theme;",
            ")TT;"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, p4}, Landroid/content/res/ConfigurationBoundResourceCache;->get(JLandroid/content/res/Resources$Theme;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/ConstantState;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p3, p4}, Landroid/content/res/ConstantState;->newInstance(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_0
    return-object v1
.end method

.method public bridge synthetic onConfigurationChange(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/content/res/ThemedResourceCache;->onConfigurationChange(I)V

    return-void
.end method

.method public bridge synthetic put(JLandroid/content/res/Resources$Theme;Ljava/lang/Object;)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/content/res/ThemedResourceCache;->put(JLandroid/content/res/Resources$Theme;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic put(JLandroid/content/res/Resources$Theme;Ljava/lang/Object;Z)V
    .locals 1

    invoke-super/range {p0 .. p5}, Landroid/content/res/ThemedResourceCache;->put(JLandroid/content/res/Resources$Theme;Ljava/lang/Object;Z)V

    return-void
.end method

.method public shouldInvalidateEntry(Landroid/content/res/ConstantState;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/ConstantState",
            "<TT;>;I)Z"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/content/res/ConstantState;->getChangingConfigurations()I

    move-result v0

    invoke-static {p2, v0}, Landroid/content/res/Configuration;->needNewResources(II)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic shouldInvalidateEntry(Ljava/lang/Object;I)Z
    .locals 1

    check-cast p1, Landroid/content/res/ConstantState;

    invoke-virtual {p0, p1, p2}, Landroid/content/res/ConfigurationBoundResourceCache;->shouldInvalidateEntry(Landroid/content/res/ConstantState;I)Z

    move-result v0

    return v0
.end method
