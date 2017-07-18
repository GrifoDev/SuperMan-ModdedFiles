.class public Lsun/security/provider/certpath/SunCertPathBuilderException;
.super Ljava/security/cert/CertPathBuilderException;
.source "SunCertPathBuilderException.java"


# static fields
.field private static final serialVersionUID:J = -0x6c71ede928a01845L


# instance fields
.field private transient adjList:Lsun/security/provider/certpath/AdjacencyList;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/security/cert/CertPathBuilderException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/security/cert/CertPathBuilderException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/security/cert/CertPathBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Lsun/security/provider/certpath/AdjacencyList;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lsun/security/provider/certpath/SunCertPathBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object p3, p0, Lsun/security/provider/certpath/SunCertPathBuilderException;->adjList:Lsun/security/provider/certpath/AdjacencyList;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lsun/security/provider/certpath/AdjacencyList;)V
    .locals 0

    invoke-direct {p0, p1}, Lsun/security/provider/certpath/SunCertPathBuilderException;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lsun/security/provider/certpath/SunCertPathBuilderException;->adjList:Lsun/security/provider/certpath/AdjacencyList;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/security/cert/CertPathBuilderException;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public getAdjacencyList()Lsun/security/provider/certpath/AdjacencyList;
    .locals 1

    iget-object v0, p0, Lsun/security/provider/certpath/SunCertPathBuilderException;->adjList:Lsun/security/provider/certpath/AdjacencyList;

    return-object v0
.end method
