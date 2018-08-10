.class public Lcom/android/systemui/PluginInflateContainer;
.super Lcom/android/systemui/AutoReinflateContainer;
.source "PluginInflateContainer.java"

# interfaces
.implements Lcom/android/systemui/plugins/PluginListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/AutoReinflateContainer;",
        "Lcom/android/systemui/plugins/PluginListener",
        "<",
        "Lcom/android/systemui/plugins/ViewProvider;",
        ">;"
    }
.end annotation


# instance fields
.field private mClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private mPluginView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/AutoReinflateContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v3, Lcom/android/systemui/R$styleable;->PluginInflateContainer:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    :try_start_0
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/PluginInflateContainer;->mClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v3, "PluginInflateContainer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Problem getting class info "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/systemui/PluginInflateContainer;->mClass:Ljava/lang/Class;

    goto :goto_0
.end method


# virtual methods
.method protected inflateLayoutImpl()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/PluginInflateContainer;->mPluginView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/PluginInflateContainer;->mPluginView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/PluginInflateContainer;->addView(Landroid/view/View;)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0}, Lcom/android/systemui/AutoReinflateContainer;->inflateLayoutImpl()V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/AutoReinflateContainer;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/systemui/PluginInflateContainer;->mClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    const-class v0, Lcom/android/systemui/plugins/PluginManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/PluginManager;

    iget-object v1, p0, Lcom/android/systemui/PluginInflateContainer;->mClass:Ljava/lang/Class;

    invoke-interface {v0, p0, v1}, Lcom/android/systemui/plugins/PluginManager;->addPluginListener(Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Lcom/android/systemui/AutoReinflateContainer;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/systemui/PluginInflateContainer;->mClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    const-class v0, Lcom/android/systemui/plugins/PluginManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/PluginManager;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/PluginManager;->removePluginListener(Lcom/android/systemui/plugins/PluginListener;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onPluginConnected(Lcom/android/systemui/plugins/Plugin;Landroid/content/Context;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/plugins/ViewProvider;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/PluginInflateContainer;->onPluginConnected(Lcom/android/systemui/plugins/ViewProvider;Landroid/content/Context;)V

    return-void
.end method

.method public onPluginConnected(Lcom/android/systemui/plugins/ViewProvider;Landroid/content/Context;)V
    .locals 1

    invoke-interface {p1}, Lcom/android/systemui/plugins/ViewProvider;->getView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/PluginInflateContainer;->mPluginView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/PluginInflateContainer;->inflateLayout()V

    return-void
.end method

.method public bridge synthetic onPluginDisconnected(Lcom/android/systemui/plugins/Plugin;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/plugins/ViewProvider;

    invoke-virtual {p0, p1}, Lcom/android/systemui/PluginInflateContainer;->onPluginDisconnected(Lcom/android/systemui/plugins/ViewProvider;)V

    return-void
.end method

.method public onPluginDisconnected(Lcom/android/systemui/plugins/ViewProvider;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/PluginInflateContainer;->mPluginView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/PluginInflateContainer;->inflateLayout()V

    return-void
.end method
