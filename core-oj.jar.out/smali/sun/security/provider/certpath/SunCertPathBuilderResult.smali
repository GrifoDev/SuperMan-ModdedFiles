.class public Lsun/security/provider/certpath/SunCertPathBuilderResult;
.super Ljava/security/cert/PKIXCertPathBuilderResult;
.source "SunCertPathBuilderResult.java"


# static fields
.field private static final debug:Lsun/security/util/Debug;


# instance fields
.field private adjList:Lsun/security/provider/certpath/AdjacencyList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "certpath"

    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    sput-object v0, Lsun/security/provider/certpath/SunCertPathBuilderResult;->debug:Lsun/security/util/Debug;

    return-void
.end method

.method constructor <init>(Ljava/security/cert/CertPath;Ljava/security/cert/TrustAnchor;Ljava/security/cert/PolicyNode;Ljava/security/PublicKey;Lsun/security/provider/certpath/AdjacencyList;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Ljava/security/cert/PKIXCertPathBuilderResult;-><init>(Ljava/security/cert/CertPath;Ljava/security/cert/TrustAnchor;Ljava/security/cert/PolicyNode;Ljava/security/PublicKey;)V

    iput-object p5, p0, Lsun/security/provider/certpath/SunCertPathBuilderResult;->adjList:Lsun/security/provider/certpath/AdjacencyList;

    return-void
.end method


# virtual methods
.method public getAdjacencyList()Lsun/security/provider/certpath/AdjacencyList;
    .locals 1

    iget-object v0, p0, Lsun/security/provider/certpath/SunCertPathBuilderResult;->adjList:Lsun/security/provider/certpath/AdjacencyList;

    return-object v0
.end method
