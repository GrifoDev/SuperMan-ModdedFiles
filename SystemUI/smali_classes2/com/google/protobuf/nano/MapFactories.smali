.class public final Lcom/google/protobuf/nano/MapFactories;
.super Ljava/lang/Object;
.source "MapFactories.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/nano/MapFactories$DefaultMapFactory;,
        Lcom/google/protobuf/nano/MapFactories$MapFactory;
    }
.end annotation


# static fields
.field private static volatile mapFactory:Lcom/google/protobuf/nano/MapFactories$MapFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/protobuf/nano/MapFactories$DefaultMapFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/protobuf/nano/MapFactories$DefaultMapFactory;-><init>(Lcom/google/protobuf/nano/MapFactories$DefaultMapFactory;)V

    sput-object v0, Lcom/google/protobuf/nano/MapFactories;->mapFactory:Lcom/google/protobuf/nano/MapFactories$MapFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
