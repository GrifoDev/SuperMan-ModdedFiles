.class public Lmf/org/apache/xerces/impl/Version;
.super Ljava/lang/Object;
.source "Version.java"


# static fields
.field private static final fImmutableVersion:Ljava/lang/String; = "@@VERSION@@"

.field public static fVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "@@VERSION@@"

    sput-object v0, Lmf/org/apache/xerces/impl/Version;->fVersion:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "@@VERSION@@"

    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sget-object v1, Lmf/org/apache/xerces/impl/Version;->fVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method
