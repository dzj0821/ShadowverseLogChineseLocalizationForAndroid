.class public final Lrx/android/internal/Preconditions;
.super Ljava/lang/Object;
.source "Preconditions.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No instances"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static checkArgument(ZLjava/lang/String;)V
    .locals 1
    .param p0, "check"    # Z
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 29
    if-nez p0, :cond_0

    .line 30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_0
    return-void
.end method

.method public static checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 22
    .local p0, "value":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_0

    .line 23
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25
    :cond_0
    return-object p0
.end method

.method public static checkState(ZLjava/lang/String;)V
    .locals 1
    .param p0, "check"    # Z
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 35
    if-nez p0, :cond_0

    .line 36
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_0
    return-void
.end method
