.class public Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginContextWrapper;
.super Landroid/content/ContextWrapper;
.source "SPluginInstanceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/splugins/SPluginInstanceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SPluginContextWrapper"
.end annotation


# instance fields
.field private final mClassLoader:Ljava/lang/ClassLoader;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/ClassLoader;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginContextWrapper;->mClassLoader:Ljava/lang/ClassLoader;

    return-void
.end method


# virtual methods
.method public getApplicationContext()Landroid/content/Context;
    .locals 0

    return-object p0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginContextWrapper;->mClassLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginContextWrapper;->mInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginContextWrapper;->mInflater:Landroid/view/LayoutInflater;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginContextWrapper;->mInflater:Landroid/view/LayoutInflater;

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
