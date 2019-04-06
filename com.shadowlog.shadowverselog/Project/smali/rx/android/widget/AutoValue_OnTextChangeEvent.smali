.class final Lrx/android/widget/AutoValue_OnTextChangeEvent;
.super Lrx/android/widget/OnTextChangeEvent;
.source "AutoValue_OnTextChangeEvent.java"


# instance fields
.field private final text:Ljava/lang/CharSequence;

.field private final view:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 12
    invoke-direct {p0}, Lrx/android/widget/OnTextChangeEvent;-><init>()V

    .line 13
    if-nez p1, :cond_0

    .line 14
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null view"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 16
    :cond_0
    iput-object p1, p0, Lrx/android/widget/AutoValue_OnTextChangeEvent;->view:Landroid/widget/TextView;

    .line 17
    if-nez p2, :cond_1

    .line 18
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null text"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 20
    :cond_1
    iput-object p2, p0, Lrx/android/widget/AutoValue_OnTextChangeEvent;->text:Ljava/lang/CharSequence;

    .line 21
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 43
    if-ne p1, p0, :cond_1

    .line 51
    :cond_0
    :goto_0
    return v1

    .line 46
    :cond_1
    instance-of v3, p1, Lrx/android/widget/OnTextChangeEvent;

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 47
    check-cast v0, Lrx/android/widget/OnTextChangeEvent;

    .line 48
    .local v0, "that":Lrx/android/widget/OnTextChangeEvent;
    iget-object v3, p0, Lrx/android/widget/AutoValue_OnTextChangeEvent;->view:Landroid/widget/TextView;

    invoke-virtual {v0}, Lrx/android/widget/OnTextChangeEvent;->view()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lrx/android/widget/AutoValue_OnTextChangeEvent;->text:Ljava/lang/CharSequence;

    .line 49
    invoke-virtual {v0}, Lrx/android/widget/OnTextChangeEvent;->text()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .end local v0    # "that":Lrx/android/widget/OnTextChangeEvent;
    :cond_3
    move v1, v2

    .line 51
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const v2, 0xf4243

    .line 56
    const/4 v0, 0x1

    .line 57
    .local v0, "h":I
    mul-int/2addr v0, v2

    .line 58
    iget-object v1, p0, Lrx/android/widget/AutoValue_OnTextChangeEvent;->view:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 59
    mul-int/2addr v0, v2

    .line 60
    iget-object v1, p0, Lrx/android/widget/AutoValue_OnTextChangeEvent;->text:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 61
    return v0
.end method

.method public text()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lrx/android/widget/AutoValue_OnTextChangeEvent;->text:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnTextChangeEvent{view="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lrx/android/widget/AutoValue_OnTextChangeEvent;->view:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lrx/android/widget/AutoValue_OnTextChangeEvent;->text:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public view()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lrx/android/widget/AutoValue_OnTextChangeEvent;->view:Landroid/widget/TextView;

    return-object v0
.end method
