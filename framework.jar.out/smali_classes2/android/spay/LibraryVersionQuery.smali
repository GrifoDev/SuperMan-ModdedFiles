.class public Landroid/spay/LibraryVersionQuery;
.super Ljava/lang/Object;
.source "LibraryVersionQuery.java"

# interfaces
.implements Lcom/samsung/android/util/LibraryVersionQuery;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLibraryVersion()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "1.7.0"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
