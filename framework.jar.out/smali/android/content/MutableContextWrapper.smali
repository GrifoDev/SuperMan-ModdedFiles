.class public Landroid/content/MutableContextWrapper;
.super Landroid/content/ContextWrapper;
.source "MutableContextWrapper.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public setBaseContext(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Landroid/content/MutableContextWrapper;->mBase:Landroid/content/Context;

    return-void
.end method
