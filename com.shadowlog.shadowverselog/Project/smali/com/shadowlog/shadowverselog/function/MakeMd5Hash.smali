.class public Lcom/shadowlog/shadowverselog/function/MakeMd5Hash;
.super Ljava/lang/Object;
.source "MakeMd5Hash.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "source"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 21
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 22
    .local v4, "str_bytes":[B
    const-string v5, "MD5"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 23
    .local v1, "md":Ljava/security/MessageDigest;
    invoke-virtual {v1, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    .line 24
    .local v2, "md5_bytes":[B
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v6, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 26
    .local v0, "big_int":Ljava/math/BigInteger;
    new-instance v3, Ljava/lang/String;

    const-string v5, "%032x"

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 28
    .local v3, "md5_str":Ljava/lang/String;
    return-object v3
.end method
