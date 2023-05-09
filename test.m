v = 'MOOC-s are very useful';
n = 137;
coded = caesar(v, n);
decoded = caesar(coded, -n);

if strcmp(decoded, v)
    fprintf("SÃO IGUAIS:\n original: %s\n coded: %s\n decoded: %s\n",v, coded, decoded);
else
    fprintf("NÃO SÃO IGUAIS:\n original: %s\n coded: %s\n decoded: %s\n",v, coded, decoded);
end