programa
{
    const inteiro TAMANHO = 5
    inteiro fila[TAMANHO]
    inteiro inicio_fila = 0
    inteiro fim_fila = 0
    inteiro total = 0

    funcao inicio()
    {
        enfileirar(100)
        enfileirar(200)
        enfileirar(300)
        
        desenfileirar()
        imprimir()
    }

    funcao enfileirar(inteiro valor)
    {
        se (total < TAMANHO)
        {
            fila[fim_fila] = valor
            fim_fila = (fim_fila + 1) % TAMANHO
            total = total + 1
            escreva("Enfileirou: ", valor, "\n")
        }
senao
        {
            escreva("Fila cheia!\n")
        }
    }

    funcao desenfileirar()
    {
        se (total > 0)
        {
            escreva("Desenfileirou: ", fila[inicio_fila], "\n")
            inicio_fila = (inicio_fila + 1) % TAMANHO
            total = total - 1
        }
senao
        {
            escreva("Fila vazia!\n")
        }
    }

    funcao imprimir()
    {
        escreva("Estado atual da fila:\n")
        inteiro idx = inicio_fila
        para (inteiro i = 0; i < total; i++)
        {
            escreva("[ ", fila[idx], " ] ")
            idx = (idx + 1) % TAMANHO
        }
        escreva("\n")
    }
}
