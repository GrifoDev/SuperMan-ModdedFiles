.class public Landroid/util/EventLogTags;
.super Ljava/lang/Object;
.source "EventLogTags.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/EventLogTags$Description;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/io/BufferedReader;)V
    .locals 0
    .param p1, "input"    # Ljava/io/BufferedReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(I)Landroid/util/EventLogTags$Description;
    .locals 1
    .param p1, "tag"    # I

    .prologue
    .line 44
    const/4 v0, 0x0

    return-object v0
.end method

.method public get(Ljava/lang/String;)Landroid/util/EventLogTags$Description;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 42
    const/4 v0, 0x0

    return-object v0
.end method
