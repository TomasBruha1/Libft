/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_itoa_unsigned.c                                 :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tbruha <tbruha@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/08/13 15:30:11 by tbruha            #+#    #+#             */
/*   Updated: 2024/12/05 17:08:56 by tbruha           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

static int		unsignedint_len(unsigned int n);
static char		*before_alloc(int n);

char	*ft_itoa_unsigned(unsigned int n)
{
	char			*res;
	unsigned int	nbr;
	int				len;
	int				i;

	nbr = n;
	len = unsignedint_len(nbr);
	res = before_alloc(len);
	if (!res)
		return (NULL);
	i = len - 1;
	while (nbr != 0)
	{
		res[i] = ((nbr % 10) + 48);
		nbr = nbr / 10;
		i--;
	}
	res[len] = '\0';
	return (res);
}

static int	unsignedint_len(unsigned int n)
{
	int	len;

	len = 0;
	if (n == 0)
		len++;
	while (n != 0)
	{
		n = n / 10;
		len++;
	}
	return (len);
}

static char	*before_alloc(int n)
{
	char	*temp;

	temp = malloc((n + 1) * sizeof(char));
	if (!temp)
		return (NULL);
	temp[0] = '0';
	return (temp);
}
