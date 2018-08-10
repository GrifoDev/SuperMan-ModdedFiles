.class public Lcom/android/settings/utils/LocalClassLoaderContextThemeWrapper;
.super Landroid/view/ContextThemeWrapper;
.source "LocalClassLoaderContextThemeWrapper.java"


# instance fields
.field private mLocalClass:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p2, p3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/android/settings/utils/LocalClassLoaderContextThemeWrapper;->mLocalClass:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/utils/LocalClassLoaderContextThemeWrapper;->mLocalClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method
